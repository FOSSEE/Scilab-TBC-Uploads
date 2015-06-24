//water//
//page 1.9 example 4//
clc
H=210.5;//hardness in ppm//
M1=100;//molecular weight of CaCO3//
M2=136;//molecular weight of FeSO4//
M=M1/M2;//multiplication factor of FeSO4//
W=H/M;//weight of FeSO4 required//
printf("\nFeSO4 required is %.1f ppm",W);