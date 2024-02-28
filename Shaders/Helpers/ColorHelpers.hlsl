/*
MIT License

Copyright (c) 2023 Poiyomi Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

float3 HUEtoRGB(in float H)
{
	float R = abs(H * 6 - 3) - 1;
	float G = 2 - abs(H * 6 - 2);
	float B = 2 - abs(H * 6 - 4);
	return saturate(float3(R, G, B));
}

float3 RGBtoHCV(in float3 RGB)
{
	// Based on work by Sam Hocevar and Emil Persson
	float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
	float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
	float C = Q.x - min(Q.w, Q.y);
	float H = abs((Q.w - Q.y) / (6 * C + (1e-10)) + Q.z);
	return float3(H, C, Q.x);
}

float3 HSVtoRGB(in float3 HSV)
{
	float3 RGB = HUEtoRGB(HSV.x);
	return ((RGB - 1) * HSV.y + 1) * HSV.z;
}

float3 RGBtoHSV(in float3 RGB)
{
	float3 HCV = RGBtoHCV(RGB);
	float S = HCV.y / (HCV.z + (1e-10));
	return float3(HCV.x, S, HCV.z);
}

float3 HSLtoRGB(in float3 HSL)
{
	float3 RGB = HUEtoRGB(HSL.x);
	float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
	return (RGB - 0.5) * C + HSL.z;
}

float3 RGBtoHSL(in float3 RGB)
{
	float3 HCV = RGBtoHCV(RGB);
	float L = HCV.z - HCV.y * 0.5;
	float S = HCV.y / (1 - abs(L * 2 - 1) + (1e-10));
	return float3(HCV.x, S, L);
}

float3 ModifyViaHSV(float3 color, float h, float s, float v)
{
	float3 colorHSV = RGBtoHSV(color);
	colorHSV.x = frac(colorHSV.x + h);
	colorHSV.y = saturate(colorHSV.y + s);
	colorHSV.z = saturate(colorHSV.z + v);
	return HSVtoRGB(colorHSV);
}

float3 linear_srgb_to_oklab(float3 c)
{
	float l = 0.4122214708 * c.x + 0.5363325363 * c.y + 0.0514459929 * c.z;
	float m = 0.2119034982 * c.x + 0.6806995451 * c.y + 0.1073969566 * c.z;
	float s = 0.0883024619 * c.x + 0.2817188376 * c.y + 0.6299787005 * c.z;
	
	float l_ = pow(l, 1.0 / 3.0);
	float m_ = pow(m, 1.0 / 3.0);
	float s_ = pow(s, 1.0 / 3.0);
	
	return float3(
	0.2104542553 * l_ + 0.7936177850 * m_ - 0.0040720468 * s_,
	1.9779984951 * l_ - 2.4285922050 * m_ + 0.4505937099 * s_,
	0.0259040371 * l_ + 0.7827717662 * m_ - 0.8086757660 * s_
	);
}

float3 oklab_to_linear_srgb(float3 c)
{
	float l_ = c.x + 0.3963377774 * c.y + 0.2158037573 * c.z;
	float m_ = c.x - 0.1055613458 * c.y - 0.0638541728 * c.z;
	float s_ = c.x - 0.0894841775 * c.y - 1.2914855480 * c.z;
	
	float l = l_ * l_ * l_;
	float m = m_ * m_ * m_;
	float s = s_ * s_ * s_;
	
	return float3(
	+ 4.0767416621 * l - 3.3077115913 * m + 0.2309699292 * s,
	- 1.2684380046 * l + 2.6097574011 * m - 0.3413193965 * s,
	- 0.0041960863 * l - 0.7034186147 * m + 1.7076147010 * s
	);
}

float3 hueShift(float3 color, float shift)
{
	float3 oklab = linear_srgb_to_oklab(max(color, 0.0000000001));
	float hue = atan2(oklab.z, oklab.y);
	hue += shift * (3.14159265359) * 2;  // Add the hue shift
	
	float chroma = length(oklab.yz);
	oklab.y = cos(hue) * chroma;
	oklab.z = sin(hue) * chroma;
	
	return oklab_to_linear_srgb(oklab);
}