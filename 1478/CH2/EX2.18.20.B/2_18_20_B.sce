//water and its treatment//
//example 2.18.20.B//
clc
conc_SH=15//in terms of g/lit//
strength_SH=conc_SH//in terms of mgs/lit//
volume_SH=20//in terms of ml//
volume_H=100//in terms of ml//
EDTA_SH=25//volume for Std hardwater(ml)//
EDTA_H=18//volume for sample hardwater(ml)//
AB_EDTA=12//volume required after boiling(ml)//
CaCO3_equivalent_SH=strength_SH*volume_SH//in terms of CaCO3 equivalent//
one_ml_EDTA=CaCO3_equivalent_SH/EDTA_SH//in terms of CaCO3 equivalent//
To_sample=one_ml_EDTA*EDTA_H/volume_H//total hardness for given volume//
To=To_sample*1000//total hardness per litre(ppm)//
P_sample=AB_EDTA*one_ml_EDTA/volume_H//permanent hardness for given volume//
P=P_sample*1000//permanent hardness per litre(ppm)//
T=To-P
printf("\nTotal Hardness is %.f mg/l or ppm",To);
printf("\nTemporary Hardness is %.f mg/l or ppm",T);
printf("\nPermanent Hardness is %.f mg/l or ppm",P);