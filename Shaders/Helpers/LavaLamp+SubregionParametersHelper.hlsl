#ifndef LAVA_LAMP_SUBREGION_HELPER_INCLUDED
#define LAVA_LAMP_SUBREGION_HELPER_INCLUDED

#include "LavaLamp+CoreHelper.hlsl"

//Determine Subregion Count For Shader Variants ----------------------------------------------------

//Declare Subregion Constants ---------------------------------------------------------------------

DECLARE_LAVA_LAMP_CONSTANTS(0);

DECLARE_LAVA_LAMP_CONSTANTS(1);

DECLARE_LAVA_LAMP_CONSTANTS(2);

DECLARE_LAVA_LAMP_CONSTANTS(3);

DECLARE_LAVA_LAMP_CONSTANTS(4);

DECLARE_LAVA_LAMP_CONSTANTS(5);

DECLARE_LAVA_LAMP_CONSTANTS(6);

DECLARE_LAVA_LAMP_CONSTANTS(7);

DECLARE_LAVA_LAMP_CONSTANTS(8);

DECLARE_LAVA_LAMP_CONSTANTS(9);

DECLARE_LAVA_LAMP_CONSTANTS(10);

DECLARE_LAVA_LAMP_CONSTANTS(11);

DECLARE_LAVA_LAMP_CONSTANTS(12);

DECLARE_LAVA_LAMP_CONSTANTS(13);

DECLARE_LAVA_LAMP_CONSTANTS(14);

DECLARE_LAVA_LAMP_CONSTANTS(15);

//Setup Parameter Helpers -------------------------------------------------------------------------

LavaLampShapeParameters GetLavaLampShapeParameters(int index)
{
    LavaLampShapeParameters shapeParameters;

    switch (index)
    {
    default:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 0);
        break;

    case 1:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 1);
        break;

    case 2:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 2);
        break;

    case 3:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 3);
		break;

    case 4:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 4);
        break;

    case 5:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 5);
        break;

    case 6:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 6);
        break;

    case 7:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 7);
        break;

    case 8:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 8);
        break;

    case 9:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 9);
        break;

    case 10:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 10);
        break;

    case 11:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 11);
        break;

    case 12:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 12);
        break;

    case 13:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 13);
        break;

    case 14:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 14);
        break;

    case 15:
        FILL_LAVA_LAMP_SHAPE_PARAMETERS(shapeParameters, 15);
        break;
    }

    return shapeParameters;
}

LavaLampMaterialParameters GetLavaLampMaterialParameters(int index)
{
    LavaLampMaterialParameters materialParameters;

    switch (index)
    {
    default:
        FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 0);
        break;

		case 1:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 1);
			break;

		case 2:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 2);
			break;

		case 3:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 3);
			break;

		case 4:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 4);
			break;

		case 5:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 5);
			break;

		case 6:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 6);
			break;

		case 7:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 7);
			break;

		case 8:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 8);
			break;

		case 9:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 9);
			break;

		case 10:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 10);
			break;

		case 11:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 11);
			break;

		case 12:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 12);
			break;

		case 13:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 13);
			break;

		case 14:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 14);
			break;

		case 15:
			FILL_LAVA_LAMP_MATERIAL_PARAMETERS(materialParameters, 15);
			break;
    }

    return materialParameters;
};

#endif