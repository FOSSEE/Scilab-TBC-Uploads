//water//
//page 1.15 example 1//
clc
strength=1.1//in terms of mgs/ml CaCO3//
volume=50//volume titrated(ml)//
EDTA=38//volume in terms of ml//
volume_hardwater=100//volume of hardwater titrated(ml)//
EDTA_hardwater=21//volume used to titrate unknown hardwater//
CaCO3_equivalent=strength*volume//in terms of mg//
one_ml_EDTA=CaCO3_equivalent/EDTA//in terms of CaCO3 equivalent//
titrate_equivalent=one_ml_EDTA*EDTA_hardwater/volume_hardwater//CaCO3 equivalent of titrated volume//
Hardness=titrate_equivalent*1000//in terms of mg/lit or ppm//
printf("\nHardness of water is %.1f mg/L",Hardness);