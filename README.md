# Lava Lamp+ Shader
# [Download the Unity package here](https://github.com/cinfulsinamon/LavaLamp/releases/latest)

A raymarched lava lamp shader intended for use on VRChat avatars. Should work in any Unity project using the Built-in Render Pipeline.
This version has been edited to use ThryEditor for the UI and adds the following features:
- UV map selection for textures (slots 1-4)
- Color Adjust for the glass and lava bubbles (both all at once and per subsection)
- A decal slot
- Separate roughness & reflection map support (one image, multiple channels)
- Maximum reflectiveness slider (old reflectiveness slider is used as the minimum to replicate original behavior)
- Masks for Tint, Color Adjust, and Decal (can be different channels on one image)
  
This is my first time editing a shader so please kindly let me know what things are wrong or broken!
Most settings should transfer over if you change from the original shader. Double check the Mesh Data section to be safe.
Since UV slots 1-4 are made available to textures, you can no longer use 2-4 for the Bind Data. Be sure to rebake using channels 5-8 if you baked into those channels previously.
Credit to Poiyomi shaders for the color adjusting code, the original MIT license is contained with that code in ColorHelpers.hlsl.

Be sure to read the instructions :>
