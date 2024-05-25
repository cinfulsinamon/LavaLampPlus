# Lava Lamp+ Shader
# [Download the Unity package here](https://github.com/cinfulsinamon/LavaLamp/releases/latest)
# NOTE: while things technically work this isn't really mean for anyone but me for now until I figure out how to implement things a bit more properly (namely making the decal application less janky).
A raymarched lava lamp shader intended for use on VRChat avatars. Should work in any Unity project using the Built-in Render Pipeline.
This version has been edited to use ThryEditor for the UI and adds the following features:
- UV map selection (slots 1-4)
- Color Adjust for the glass and lava (both all at once and per subsection)
- A decal slot
- Separate roughness & reflection map support (one image, multiple channels)
- Minimum reflectiveness (old reflectiveness slider acts as the max)
- masks for tint, color adjust, and decals (can be different channels on one image)
  
This is my first time editing a shader so please kindly let me know what things are wrong or broken!
Settings should transfer over if you change from the original shader.
Credit to Poiyomi shaders for the color adjusting code, the original MIT license is contained with that code in ColorHelpers.hlsl.

Be sure to read the instructions :>
