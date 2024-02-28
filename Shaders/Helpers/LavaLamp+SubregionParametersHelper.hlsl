#ifndef LAVA_LAMP_SUBREGION_HELPER_INCLUDED
#define LAVA_LAMP_SUBREGION_HELPER_INCLUDED

#include "LavaLamp+CoreHelper.hlsl"

//Determine Subregion Count For Shader Variants ----------------------------------------------------

//Declare Subregion Constants ---------------------------------------------------------------------

DECLARE_LAVA_LAMP_CONSTANTS(0);

#if (_LavaSubregionCount > 1)
    DECLARE_LAVA_LAMP_CONSTANTS(1);
#endif

#if (_LavaSubregionCount > 2)
    DECLARE_LAVA_LAMP_CONSTANTS(2);
#endif

#if (_LavaSubregionCount > 3)
    DECLARE_LAVA_LAMP_CONSTANTS(3);
#endif

#if (_LavaSubregionCount > 4)
    DECLARE_LAVA_LAMP_CONSTANTS(4);
#endif

#if (_LavaSubregionCount > 5)
    DECLARE_LAVA_LAMP_CONSTANTS(5);
#endif

#if (_LavaSubregionCount > 6)
    DECLARE_LAVA_LAMP_CONSTANTS(6);
#endif

#if (_LavaSubregionCount > 7)
    DECLARE_LAVA_LAMP_CONSTANTS(7);
#endif

#if (_LavaSubregionCount > 8)
    DECLARE_LAVA_LAMP_CONSTANTS(8);
#endif

#if (_LavaSubregionCount > 9)
    DECLARE_LAVA_LAMP_CONSTANTS(9);
#endif

#if (_LavaSubregionCount > 10)
    DECLARE_LAVA_LAMP_CONSTANTS(10);
#endif

#if (_LavaSubregionCount > 11)
    DECLARE_LAVA_LAMP_CONSTANTS(11);
#endif

#if (_LavaSubregionCount > 12)
    DECLARE_LAVA_LAMP_CONSTANTS(12);
#endif

#if (_LavaSubregionCount > 13)
    DECLARE_LAVA_LAMP_CONSTANTS(13);
#endif

#if (_LavaSubregionCount > 14)
    DECLARE_LAVA_LAMP_CONSTANTS(14);
#endif

#if (_LavaSubregionCount > 15)
    DECLARE_LAVA_LAMP_CONSTANTS(15);
#endif

//Setup Parameter Helpers -------------------------------------------------------------------------

LavaLampShapeParameters GetLavaLampShapeParameters(int index)
{
    LavaLampShapeParameters shapeParameters;

    [branch]
    switch (index)
    {
    default:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 0);
        break;

#if (_LavaSubregionCount > 1)
    case 1:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 1);
        break;
#endif

#if (_LavaSubregionCount > 2)
    case 2:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 2);
        break;
#endif

#if (_LavaSubregionCount > 3)
    case 3:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 3);
        break;
#endif

#if (_LavaSubregionCount > 4)
    case 4:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 4);
        break;
#endif

#if (_LavaSubregionCount > 5)
    case 5:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 5);
        break;
#endif

#if (_LavaSubregionCount > 6)
    case 6:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 6);
        break;
#endif

#if (_LavaSubregionCount > 7)
    case 7:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 7);
        break;
#endif

#if (_LavaSubregionCount > 8)
    case 8:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 8);
        break;
#endif

#if (_LavaSubregionCount > 9)
    case 9:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 9);
        break;
#endif

#if (_LavaSubregionCount > 10)
    case 10:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 10);
        break;
#endif

#if (_LavaSubregionCount > 11)
    case 11:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 11);
        break;
#endif

#if (_LavaSubregionCount > 12)
    case 12:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 12);
        break;
#endif

#if (_LavaSubregionCount > 13)
    case 13:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 13);
        break;
#endif

#if (_LavaSubregionCount > 14)
    case 14:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 14);
        break;
#endif

#if (_LavaSubregionCount > 15)
    case 15:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 15);
        break;
#endif
    }

    return shapeParameters;
}

LavaLampMaterialParameters GetLavaLampMaterialParameters(int index)
{
    LavaLampMaterialParameters materialParameters;

    [branch]
    switch (index)
    {
    default:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 0);
        break;

#if (_LavaSubregionCount > 1)
    case 1:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 1);
        break;
#endif

#if (_LavaSubregionCount > 2)
    case 2:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 2);
        break;
#endif

#if (_LavaSubregionCount > 3)
    case 3:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 3);
        break;
#endif

#if (_LavaSubregionCount > 4)
    case 4:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 4);
        break;
#endif

#if (_LavaSubregionCount > 5)
    case 5:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 5);
        break;
#endif

#if (_LavaSubregionCount > 6)
    case 6:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 6);
        break;
#endif

#if (_LavaSubregionCount > 7)
    case 7:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 7);
        break;
#endif

#if (_LavaSubregionCount > 8)
    case 8:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 8);
        break;
#endif

#if (_LavaSubregionCount > 9)
    case 9:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 9);
        break;
#endif

#if (_LavaSubregionCount > 10)
    case 10:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 10);
        break;
#endif

#if (_LavaSubregionCount > 11)
    case 11:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 11);
        break;
#endif

#if (_LavaSubregionCount > 12)
    case 12:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 12);
        break;
#endif

#if (_LavaSubregionCount > 13)
    case 13:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 13);
        break;
#endif

#if (_LavaSubregionCount > 14)
    case 14:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 14);
        break;
#endif

#if (_LavaSubregionCount > 15)
    case 15:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 15);
        break;
#endif
    }

    return materialParameters;
};

#endif