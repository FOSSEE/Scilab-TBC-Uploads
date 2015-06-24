//water and its treatment//
//example 2.18.12//
clc
strength_CaCl2=250/200//in terms of mgs/ml CaCO3//
volume_CaCl2=25//volume of CaCl2 titrated(ml)//
EDTA_CaCl2=35//volume in terms of ml//
volume_hardwater=25//volume of hardwater titrated(ml)//
EDTA_hardwater=30//volume used to titrate unknown hardwater//
CaCO3_equivalent_CaCl2=strength_CaCl2*volume_CaCl2//in terms of mg//
one_ml_EDTA=CaCO3_equivalent_CaCl2/EDTA_CaCl2//in terms of CaCO3 equivalent//
titrate_equivalent=one_ml_EDTA*EDTA_hardwater/volume_hardwater//CaCO3 equivalent of titrated volume//
Hardness=titrate_equivalent*1000//in terms of mg/lit or ppm//
printf("\nHardness of water is %.0f mg/l or ppm",Hardness);