Shader "normalizedcrow/Lava Lamp+ [cinfulsinamon]"
{
    Properties 
  { 
      [HideInInspector] shader_is_using_thry_editor("", Float)=0
      [HideInInspector] shader_master_label ("<color=#ff0000ff>Lava Lamp+</color>", Float) = 0
	  [HideInInspector] shader_on_swap_to ("--{actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent}]}", Float) = 0
		
		//Glass
		[HideInInspector] m_Glass ("Glass", Float) = 1
		[HideInInspector] m_start_ColNrm ("Color and Normals", Float) = 0
        _Tint("Tint Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _TintMap("Tint Texture--{reference_properties:[_TintMapUV]}", 2D) = "white" {}
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _TintMapUV ("UV", Integer) = 0
		_TintMask("Tint Mask--{reference_properties:[_TintMaskUV,_TintMaskChannel]}", 2D) = "white" {}
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _TintMaskUV ("UV", Integer) = 0
		[HideInInspector][ThryWideEnum(R, 0, G, 1, B, 2, A, 3)] _TintMaskChannel ("Channel", Integer) = 0
		[Space]
        [Normal] _NormalMap("Normal Map--{reference_properties:[_NormalUV,_NormalStrength]}", 2D) = "bump" {}
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _NormalUV ("UV", Integer) = 0
        [HideInInspector] _NormalStrength("Normal Map Strength", Range(0.0, 10.0)) = 1.0
		[Space]
        [HDR] _BackgroundColor("Background Color", Color) = (0.0, 0.0, 0.0, 0.0)
        [Toggle] _UseBackgroundCubemap("Use Background Cubemap", Float) = 0.0
        [NoScaleOffset] _BackgroundCubemap("Background Cubemap--{offset:1}", Cube) = "black" {}
		[ThryToggle(LAVA_LAMP_USE_TRANSPARENCY)] _Transparency_Toggle("Transparent Background", Float) = 1.0
		[HideInInspector] m_end_ColNrm ("", Float) = 0
		
		[HideInInspector] m_start_ColAdj ("Color Adjust--{reference_property:_ColAdjToggle}", Float) = 0
		[HideInInspector][ToggleUI] _ColAdjToggle ("Color Adjust Toggle", Integer) = 0
		_ColAdjMask("Mask--{reference_properties:[_ColAdjMaskUV,_ColAdjMaskChannel]}", 2D) = "white" {} 
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _ColAdjMaskUV ("UV", Integer) = 0
		[HideInInspector][ThryWideEnum(R, 0, G, 1, B, 2, A, 3)] _ColAdjMaskChannel ("Channel", Integer) = 0
		[Toggle] _UseTintMaskColAdj ("Use Tint Mask--{offset:1}", Integer) = 0
		[Space]
		_TintHue       ("Hue Adjust",          Range( 0, 1)) = 0
		_TintSaturation ("Saturation Adjust",   Range(-1, 0)) = 0
		_TintValue      ("Value Adjust",        Range(-1, 0)) = 0
		[HideInInspector] m_end_ColAdj ("", Float) = 0
		
		[HideInInspector] m_start_Dec ("Decal--{reference_property:_DecalToggle}", Float) = 0
		[HideInInspector][ToggleUI] _DecalToggle ("Decal Toggle", Integer) = 0
		_Decal("Decal Color", Color) = (1.0, 1.0, 1.0, 1.0)
		_DecalMap("Decal Map--{reference_properties:[_DecalUV,_DecalAlpha]}", 2D) = "black" {}
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _DecalUV ("UV", Integer) = 0
		[HideInInspector]_DecalAlpha("Decal Alpha", Range( 0, 1)) = 1
		_DecalMask("Decal Mask--{reference_properties:[_DecalMaskUV,_DecalMaskChannel]}", 2D) = "white" {}
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _DecalMaskUV ("UV", Integer) = 0
		[HideInInspector][ThryWideEnum(R, 0, G, 1, B, 2, A, 3)] _DecalMaskChannel ("Channel", Integer) = 0
		[Toggle] _UseTintMaskDecal ("Use Tint Mask--{offset:1}", Integer) = 0
		[Toggle] _UseLightingDecal ("Use Lighting--{offset:1,condition_showS:_Lighting_Toggle==1}", Integer) = 0
		_DecalMinBrightness       ("Min Brightness--{condition_showS:_UseLightingDecal==1 && _Lighting_Toggle==1}",          Range( 0, 1)) = 0.0
		_DecalMaxBrightness       ("Max Brightness--{condition_showS:_UseLightingDecal==1 && _Lighting_Toggle==1}",          Range( 0, 10)) = 1.0
		[HideInInspector] m_end_Dec("", Float) = 0
		
		[HideInInspector] m_start_Emission ("Emission--{reference_property:_EmiToggle}", Float) = 0
		[HideInInspector][ToggleUI] _EmiToggle("Emission", Integer) = 0
		[HDR]_EmiCol("Emission Color", Color) = (1.0, 1.0, 1.0, 1.0)
		_EmiStr       ("Emission Strength",          Range( 0, 20)) = 0
		_EmiMap("Map--{reference_properties:[_EmiMapUV]}", 2D) = "white" {} 
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _EmiMapUV ("UV", Integer) = 0
		_EmiMask("Mask--{reference_properties:[_EmiMaskUV,_EmiMaskChannel]}", 2D) = "white" {} 
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _EmiMaskUV ("UV", Integer) = 0
		[HideInInspector][ThryWideEnum(R, 0, G, 1, B, 2, A, 3)] _EmiMaskChannel ("Channel", Integer) = 0
		[Toggle] _UseTintMaskEmi ("Use Tint Mask--{offset:1}", Integer) = 0
		[Space]
		_EmiHue       ("Hue Adjust",          Range( 0, 1)) = 0
		_EmiSaturation ("Saturation Adjust",   Range(-1, 0)) = 0
		_EmiValue      ("Value Adjust",        Range(-1, 0)) = 0
		[HideInInspector] m_end_Emission ("", Float) = 0
		
		[HideInInspector] m_start_RefSpec ("Roughness and Reflections", Float) = 0
        _RoughnessMap("Roughness & Reflection Map--{reference_properties:[_RoughnessMapUV,_RoughnessChannel,_InvertRoughness,_ReflectiveChannel,_InvertReflectiveness,_SpecularChannel,_InvertSpecular]}", 2D) = "black" {}
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _RoughnessMapUV ("UV", Integer) = 0
		[HideInInspector][ThryWideEnum(R, 0, G, 1, B, 2, A, 3, None ,4)] _RoughnessChannel ("Roughness Channel", Integer) = 0
		[HideInInspector][Toggle] _InvertRoughness ("Invert Roughness", Integer) = 0
		[HideInInspector][ThryWideEnum(R, 0, G, 1, B, 2, A, 3, None ,4)] _ReflectiveChannel ("Reflectiveness Channel", Integer) = 1
		[HideInInspector][Toggle] _InvertReflectiveness ("Invert Reflectiveness", Integer) = 0
		[HideInInspector][ThryWideEnum(R, 0, G, 1, B, 2, A, 3, None ,4)] _SpecularChannel ("Specular Mask Channel", Integer) = 2
		[HideInInspector][Toggle] _InvertSpecular ("Invert Specular Mask", Integer) = 0
        _MinPerceptualRoughness("Min Roughness--{offset:1}", Range(0.0, 1.0)) = 0.1
        _MaxPerceptualRoughness("Max Roughness--{offset:1}", Range(0.0, 1.0)) = 1.0 
		[Space]
		_Reflectiveness("Min Reflectiveness--{offset:1}", Range(0.0, 1.0)) = 0.0
		_MaxReflectiveness("Max Reflectiveness--{offset:1}", Range(0.0, 1.0)) = 1.0
		[Space]
		_MinSpecular("Min Specularity--{offset:1}", Range(0.0, 1.0)) = 0.0
		_MaxSpecular("Max Specularity--{offset:1}", Range(0.0, 1.0)) = 1
		[Space]
        [Toggle] _UseCustomReflectionProbe("Use Custom Reflection Probe", Float) = 0.0
        [NoScaleOffset] _CustomReflectionProbe("Custom Reflection Probe--{offset:1}", Cube) = "black" {}
		[Space]
        _RefractiveIndex("Refractive Index", Range(1.0, 1.5)) = 1.1
		[HideInInspector] m_end_RefSpec ("", Float) = 0
        
        //Lava Shared Properties
		[HideInInspector] m_Lava ("Lava", Float) = 1
		[HideInInspector] m_start_LavaShared ("Shared Properties", Float) = 0
        _LavaPadding("Padding", Range(0.01, 0.2)) = 0.05
        _LavaSmoothingFactor("Smoothing", Range(0.01, 0.5)) = 0.3
        _LavaVerticalSeparation("Vertical Spacing", Range(1.0, 5.0)) = 2.5
        _LavaSkipChance("Invisible Blob Chance", Range(0.0, 1.0)) = 0.3
        _LavaMinSize("Min Size", Range(0.0, 1.0)) = 0.25
        _LavaMaxSize("Max Size", Range(0.0, 1.0)) = 1.0
        _LavaSizeDistribution("Size Distribution", Range(-3.0, 3.0)) = 0.0
        _LavaMinSpeed("Min Speed", Range(0.0, 1.0)) = 0.05
        _LavaMaxSpeed("Max Speed", Range(0.0, 1.0)) = 0.2
        _LavaMinDriftSpeed("Min Drift Speed", Range(0.0, 5.0)) = 0.0
        _LavaMaxDriftSpeed("Max Drift Speed", Range(0.0, 5.0)) = 1.0
        _LavaReflectiveness("Reflectiveness", Range(0.0, 1.0)) = 0.0
        _LavaPerceptualRoughness("Roughness", Range(0.0, 1.0)) = 0.2
        _LavaSoftDepthSize("Soft Depth Intersection Size", Range(0.0, 10.0)) = 0.01
        _LavaTouchingSideBlendSize("Touching Side Blend Size", Range(0.0, 1.0)) = 0.01
		[HideInInspector] m_start_LavaColorAdjust ("Lava Master Color Adjust", Float) = 0
		_LavaHue       ("Master Lava Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation ("Master Lava Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue      ("Master Lava Value Adjust",        Range(-1, 0)) = 0
		[HideInInspector] m_end_LavaColorAdjust ("", Float) = 0
		[Space]
		[IntRange] _LavaSubregionCount("Subregion Count",	 Range(1, 16)) = 1.0
        [HideInInspector] m_end_LavaShared ("", Float) = 0
		
        //Subregion 0
		[HideInInspector] m_start_Sub0 ("Subregion 0", Float) = 0
        [PowerSlider(2.72)] _LavaScale0("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight0("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight0("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor0("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor0("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale0("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue0       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation0 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue0      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor0("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength0("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor0("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength0("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor0("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight0("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor0("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight0("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff0("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection0("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub0 ("", Float) = 0

        //Subregion 1
		[HideInInspector] m_start_Sub1 ("Subregion 1--{condition_showS:_LavaSubregionCount>1}", Float) = 0
        [PowerSlider(2.72)] _LavaScale1("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight1("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight1("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor1("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor1("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale1("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue1       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation1 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue1      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor1("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength1("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor1("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength1("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor1("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight1("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor1("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight1("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff1("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection1("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub1 ("", Float) = 0

        //Subregion 2
		[HideInInspector] m_start_Sub2 ("Subregion 2--{condition_showS:_LavaSubregionCount>2}", Float) = 0
        [PowerSlider(2.72)] _LavaScale2("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight2("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight2("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor2("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor2("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale2("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue2       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation2 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue2      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor2("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength2("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor2("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength2("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor2("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight2("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor2("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight2("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff2("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection2("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub2 ("", Float) = 0

        //Subregion 3
		[HideInInspector] m_start_Sub3 ("Subregion 3--{condition_showS:_LavaSubregionCount>3}", Float) = 0
        [PowerSlider(2.72)] _LavaScale3("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight3("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight3("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor3("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor3("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale3("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue3       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation3 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue3      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor3("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength3("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor3("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength3("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor3("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight3("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor3("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight3("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff3("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection3("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub3 ("", Float) = 0

        //Subregion 4
		[HideInInspector] m_start_Sub4 ("Subregion 4--{condition_showS:_LavaSubregionCount>4}", Float) = 0
        [PowerSlider(2.72)] _LavaScale4("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight4("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight4("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor4("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor4("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale4("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue4       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation4 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue4      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor4("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength4("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor4("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength4("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor4("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight4("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor4("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight4("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff4("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection4("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub4 ("", Float) = 0

        //Subregion 5
		[HideInInspector] m_start_Sub5 ("Subregion 5--{condition_showS:_LavaSubregionCount>5}", Float) = 0
        [PowerSlider(2.72)] _LavaScale5("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight5("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight5("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor5("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor5("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale5("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue5       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation5 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue5      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor5("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength5("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor5("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength5("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor5("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight5("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor5("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight5("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff5("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		
        _LavaFlowDirection5("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub5 ("", Float) = 0

        //Subregion 6
		[HideInInspector] m_start_Sub6 ("Subregion 6--{condition_showS:_LavaSubregionCount>6}", Float) = 0
        [PowerSlider(2.72)] _LavaScale6("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight6("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight6("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor6("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor6("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale6("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue6       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation6 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue6      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor6("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength6("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor6("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength6("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor6("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight6("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor6("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight6("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff6("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		
        _LavaFlowDirection6("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub6 ("", Float) = 0

        //Subregion 7
		[HideInInspector] m_start_Sub7 ("Subregion 7--{condition_showS:_LavaSubregionCount>7}", Float) = 0
        [PowerSlider(2.72)] _LavaScale7("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight7("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight7("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor7("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor7("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale7("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue7       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation7 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue7      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor7("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength7("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor7("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength7("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor7("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight7("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor7("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight7("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff7("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection7("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub7 ("", Float) = 0

        //Subregion 8
		[HideInInspector] m_start_Sub8 ("Subregion 8--{condition_showS:_LavaSubregionCount>8}", Float) = 0
        [PowerSlider(2.72)] _LavaScale8("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight8("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight8("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor8("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor8("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale8("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue8       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation8 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue8      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor8("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength8("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor8("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength8("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor8("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight8("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor8("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight8("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff8("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection8("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub8 ("", Float) = 0

        //Subregion 9
		[HideInInspector] m_start_Sub9 ("Subregion 9--{condition_showS:_LavaSubregionCount>9}", Float) = 0
        [PowerSlider(2.72)] _LavaScale9("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight9("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight9("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor9("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor9("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale9("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue9       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation9 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue9      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor9("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength9("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor9("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength9("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor9("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight9("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor9("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight9("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff9("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection9("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub9 ("", Float) = 0

        //Subregion 10
		[HideInInspector] m_start_Sub10 ("Subregion 10--{condition_showS:_LavaSubregionCount>10}", Float) = 0
        [PowerSlider(2.72)] _LavaScale10("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight10("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight10("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor10("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor10("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale10("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue10       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation10 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue10      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor10("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength10("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor10("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength10("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor10("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight10("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor10("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight10("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff10("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection10("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub10 ("", Float) = 0

        //Subregion 11
		[HideInInspector] m_start_Sub11 ("Subregion 11--{condition_showS:_LavaSubregionCount>11}", Float) = 0
        [PowerSlider(2.72)] _LavaScale11("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight11("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight11("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor11("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor11("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale11("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue11       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation11 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue11      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor11("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength11("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor11("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength11("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor11("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight11("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor11("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight11("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff11("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection11("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub11 ("", Float) = 0

        //Subregion 12
		[HideInInspector] m_start_Sub12 ("Subregion 12--{condition_showS:_LavaSubregionCount>12}", Float) = 0
        [PowerSlider(2.72)] _LavaScale12("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight12("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight12("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor12("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor12("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale12("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue12       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation12 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue12     ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor12("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength12("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor12("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength12("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor12("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight12("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor12("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight12("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff12("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection12("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub12 ("", Float) = 0

        //Subregion 13
		[HideInInspector] m_start_Sub13 ("Subregion 13--{condition_showS:_LavaSubregionCount>13}", Float) = 0
        [PowerSlider(2.72)] _LavaScale13("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight13("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight13("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor13("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor13("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale13("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue13       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation13 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue13     ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor13("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength13("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor13("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength13("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor13("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight13("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor13("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight13("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff13("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection13("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub13 ("", Float) = 0

        //Subregion 14
		[HideInInspector] m_start_Sub14 ("Subregion 14--{condition_showS:_LavaSubregionCount>14}", Float) = 0
        [PowerSlider(2.72)] _LavaScale14("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight14("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight14("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor14("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor14("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale14("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue14       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation14 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue14      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor14("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength14("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor14("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength14("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor14("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight14("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor14("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight14("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff14("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection14("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub14 ("", Float) = 0

        //Subregion 15
		[HideInInspector] m_start_Sub15 ("Subregion 15--{condition_showS:_LavaSubregionCount>15}", Float) = 0
        [PowerSlider(2.72)] _LavaScale15("Scale", Range(0.001, 2.0)) = 0.5
		[Space(10)]
        _LavaTopReservoirHeight15("Top Reservoir Height", Float) = 5.0
        _LavaBottomReservoirHeight15("Bottom Reservoir Height", Float) = -5.0
		[Space(10)]
        _LavaCoreColor15("Lava Core Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaEdgeColor15("Lava Edge Color", Color) = (0.75, 0.75, 0.75, 1.0)
        [PowerSlider(2.72)] _LavaColorThicknessScale15("Lava Color Thickness Scale", Range(0.0, 30.0)) = 5.0
		_LavaHue15       ("Hue Adjust",          Range( 0, 1)) = 0
		_LavaSaturation15 ("Saturation Adjust",   Range(-1, 0)) = 0
		_LavaValue15      ("Value Adjust",        Range(-1, 0)) = 0
		[Space(10)]
        _LavaWaterHazeColor15("Water Haze Color", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterHazeStrength15("Water Haze Density", Range(0.0, 50.0)) = 0.0
		[Space(10)]
        _LavaWaterTintColor15("Water Tint", Color) = (1.0, 1.0, 1.0, 1.0)
        [PowerSlider(2.72)] _LavaWaterTintStrength15("Water Tint Strength", Range(1.0, 100.0)) = 1.0
		[Space(10)]
        [HDR] _LavaTopLightColor15("Top Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaTopLightHeight15("Top Light Height", Float) = 1.0
        [HDR] _LavaBottomLightColor15("Bottom Light Color", Color) = (1.0, 1.0, 1.0, 1.0)
        _LavaBottomLightHeight15("Bottom Light Height", Float) = -1.0
        [PowerSlider(2.72)] _LavaLightFalloff15("Light Falloff Scale", Range(0.0, 100.0)) = 1.0
		[Space(10)]
        _LavaFlowDirection15("Flow Direction", Vector) = (0.0, 1.0, 0.0, 0.0)
		[HideInInspector] m_end_Sub15 ("", Float) = 0
		
		[HideInInspector] m_Adv ("Advanced", Float) = 1

        //Mesh Data
		[HideInInspector] m_start_Mesh ("Mesh Data", Float) = 0
        [KeywordEnum(Disabled, Enabled, Auto)] Lava_Lamp_Bind_Data("Use Mesh Bind Data", Integer) = 2
        [KeywordEnum(UV5, UV6, UV7, UV8)] Lava_Lamp_Bind_Positions_Slot("Bind Positions UV Channel", Float) = 1.0
        [KeywordEnum(UV5, UV6, UV7, UV8)] Lava_Lamp_Bind_Normals_Slot("Bind Normals UV Channel", Float) = 2.0
        [KeywordEnum(UV5, UV6, UV7, UV8)] Lava_Lamp_Bind_Tangents_Slot("Bind Tangents UV Channel}", Float) = 3.0
		[Helpbox] _BindDataError("Bind data UV channels should not overlap!--{condition_showS: Lava_Lamp_Bind_Positions_Slot == Lava_Lamp_Bind_Normals_Slot || Lava_Lamp_Bind_Normals_Slot == Lava_Lamp_Bind_Tangents_Slot || Lava_Lamp_Bind_Positions_Slot == Lava_Lamp_Bind_Tangents_Slot}",Float)= 0
        _WorldRecale("World Rescale", Float) = 1.0
		[HideInInspector] m_end_Mesh ("", Float) = 0

        //Volume Data
		[HideInInspector] m_start_Vol ("Volume Data", Float) = 0
        [noscaleoffset] _SDFTexture("SDF Texture", 3D) = "black" {}
        _SDFPixelSize("SDF Pixel Size", Float) = 1.0
        _SDFLowerCorner("SDF Lower Corner", Vector) = (0.0, 0.0, 0.0, 0.0)
        _SDFSize("SDF Size", Vector) = (1.0, 1.0, 1.0, 0.0)
        _MinThickness("Min Thickness", Range(0.0, 50.0)) = 0.01
		[HideInInspector] m_end_Vol ("", Float) = 0

        //Advanced Rendering Options
		[HideInInspector] m_start_AdvRen ("Rendering Options", Float) = 0
        [Enum(UnityEngine.Rendering.CullMode)] _CullMode("Culling Mode", Int) = 2
        [IntRange] _DepthOffset("Depth Offset", Range(-1.0, 1.0)) = 0.0
        _MaxSpecularHighlightBrightness("Max Specular Highlight Brightness", Float) = -1.0
        [ThryToggle(LAVA_LAMP_USE_LIGHTING)] _Lighting_Toggle("Surface Lighting", Float) = 1.0
        [ThryToggle(LAVA_LAMP_DEPTH_INTERSECTION)] _DepthIntersection_Toggle("Lava Depth Intersection", Float) = 0.0
        [Toggle] _ZWrite("Write Depth", Int) = 1

		[HideInInspector] m_end_AdvRen ("", Float) = 0
    }

    SubShader
    {
        Tags { "Queue" = "Transparent" "DisableBatching" = "True" "IgnoreProjector" = "True" }
        Offset [_DepthOffset], [_DepthOffset]
		
		//ifdef LAVA_LAMP_USE_TRANSPARENCY
        GrabPass
        {
            Tags { "LightMode" = "Always" } //this pass gets disabled by the ShaderGUI when transparency is disabled
            
            "_LavaLampGrabTexture" //only do a single grab pass for all lava lamps for the sake of performance
        }
		//endif

        Pass
        {
            Tags { "LightMode" = "ForwardBase" }

            Cull [_CullMode]
            ZWrite [_ZWrite]
            ZTest LEqual
            Blend Off
            
            HLSLPROGRAM
            
            #pragma target 5.0
            #pragma multi_compile_fwdbase novertexlight nolightmap nodynlightmap nodirlightmap
            #pragma multi_compile_fog 
            #pragma multi_compile_instancing
            
            #pragma shader_feature_local LAVA_LAMP_USE_TRANSPARENCY
            #pragma shader_feature_local LAVA_LAMP_DEPTH_INTERSECTION
            #pragma shader_feature_local LAVA_LAMP_USE_LIGHTING
         
            #pragma shader_feature_local LAVA_LAMP_BIND_DATA_DISABLED LAVA_LAMP_BIND_DATA_ENABLED LAVA_LAMP_BIND_DATA_AUTO
            #pragma shader_feature_local LAVA_LAMP_BIND_POSITIONS_SLOT_UV5 LAVA_LAMP_BIND_POSITIONS_SLOT_UV6 LAVA_LAMP_BIND_POSITIONS_SLOT_UV7 LAVA_LAMP_BIND_POSITIONS_SLOT_UV8
            #pragma shader_feature_local LAVA_LAMP_BIND_NORMALS_SLOT_UV5 LAVA_LAMP_BIND_NORMALS_SLOT_UV6 LAVA_LAMP_BIND_NORMALS_SLOT_UV7 LAVA_LAMP_BIND_NORMALS_SLOT_UV8
            #pragma shader_feature_local LAVA_LAMP_BIND_TANGENTS_SLOT_UV5 LAVA_LAMP_BIND_TANGENTS_SLOT_UV6 LAVA_LAMP_BIND_TANGENTS_SLOT_UV7 LAVA_LAMP_BIND_TANGENTS_SLOT_UV8
            
            #pragma vertex LavaLampBaseVertexShader
            #pragma fragment LavaLampBasePixelShader
            
            #include "Helpers/LavaLamp+Common.hlsl"
            
            ENDHLSL
        }
		
		//ifdef LAVA_LAMP_USE_LIGHTING
        Pass
        {
            //this pass gets disabled by the ShaderGUI when lighting is disabled
            Tags { "LightMode" = "ForwardAdd" }

            Cull [_CullMode]
            ZWrite Off
            ZTest LEqual
            Blend One One
            Fog { Color(0,0,0,0) } // in additive pass fog should be black
            
            HLSLPROGRAM
            
            #pragma target 5.0
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog 
            #pragma multi_compile_instancing
			
            #pragma shader_feature_local LAVA_LAMP_BIND_DATA_DISABLED LAVA_LAMP_BIND_DATA_ENABLED LAVA_LAMP_BIND_DATA_AUTO
            #pragma shader_feature_local LAVA_LAMP_BIND_POSITIONS_SLOT_UV2 LAVA_LAMP_BIND_POSITIONS_SLOT_UV3  LAVA_LAMP_BIND_POSITIONS_SLOT_UV4 LAVA_LAMP_BIND_POSITIONS_SLOT_UV5 LAVA_LAMP_BIND_POSITIONS_SLOT_UV6 LAVA_LAMP_BIND_POSITIONS_SLOT_UV7 LAVA_LAMP_BIND_POSITIONS_SLOT_UV8
            
            #pragma vertex LavaLampLightingVertexShader
            #pragma fragment LavaLampLightingPixelShader
            
            #include "Helpers/LavaLamp+Common.hlsl"
            
            ENDHLSL
        }
		//endif
		
        Pass
        {
            Name "ShadowCaster"
            Tags { "LightMode" = "ShadowCaster" }
            
            ZWrite On
            ZTest LEqual
            Cull Off
            
            HLSLPROGRAM
            
            #pragma target 5.0
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_instancing
            
			#pragma shader_feature_local LAVA_LAMP_BIND_DATA_DISABLED LAVA_LAMP_BIND_DATA_ENABLED LAVA_LAMP_BIND_DATA_AUTO
            #pragma shader_feature_local LAVA_LAMP_BIND_POSITIONS_SLOT_UV2 LAVA_LAMP_BIND_POSITIONS_SLOT_UV3  LAVA_LAMP_BIND_POSITIONS_SLOT_UV4 LAVA_LAMP_BIND_POSITIONS_SLOT_UV5 LAVA_LAMP_BIND_POSITIONS_SLOT_UV6 LAVA_LAMP_BIND_POSITIONS_SLOT_UV7 LAVA_LAMP_BIND_POSITIONS_SLOT_UV8
            
            #pragma vertex LavaLampShadowVertexShader
            #pragma fragment LavaLampShadowPixelShader
            
            #include "Helpers/LavaLamp+Common.hlsl"
            
            ENDHLSL
        }
    }

    CustomEditor "Thry.ShaderEditor"
}