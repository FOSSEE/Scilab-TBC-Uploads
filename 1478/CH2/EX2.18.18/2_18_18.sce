//water and its treatment//
//example 2.18.18//
clc
strength_SH=1//in terms of mgs/lit//
volume_SH=50//in terms of ml//
volume_H=50//in terms of ml//
EDTA_SH=20//volume for Std hardwater(ml)//
EDTA_H=25//volume for sample hardwater(ml)//
CaCO3_equivalent_SH=strength_SH*volume_SH//in terms of CaCO3 equivalent//
one_ml_EDTA=CaCO3_equivalent_SH/EDTA_SH//in terms of CaCO3 equivalent//
To_sample=one_ml_EDTA*EDTA_H/volume_H//total hardness for given volume//
To=To_sample*1000//total hardness per litre(ppm)//
printf("\nTotal Hardness is %.f mg/l or ppm",To);