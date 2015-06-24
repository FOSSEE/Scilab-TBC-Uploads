//water and its treatment//
//example 2.18.13//
clc
strength_SH=1//strength of Std hardwater
volume_SH=50//in terms of ml//
volume_H=50//in terms of ml//
EDTA_SH=35//volume for Std hardwater(ml)//
EDTA_H=20//volume for sample hardwater(ml)//
AB_EDTA=12//volume required after boiling(ml)//
CaCO3_equivalent_SH=strength_SH*volume_SH//in terms of CaCO3 equivalent//
one_ml_EDTA=CaCO3_equivalent_SH/EDTA_SH//in terms of CaCO3 equivalent//
To_sample=one_ml_EDTA*EDTA_H/volume_H//total hardness for given volume//
To=To_sample*1000//total hardness per litre(ppm)//
P_sample=AB_EDTA*one_ml_EDTA/volume_H//permanent hardness for given volume//
P=P_sample*1000//permanent hardness per litre(ppm)//
T=To-P
printf("\nTotal Hardness is %.2f mg/l or ppm",To);
printf("\nPermanent Hardness is %.2f mg/l or ppm",P);
printf("\nTemporary Hardness is %.2f mg/l or ppm",T);