//Chapter-5, Illustration 17, Page 267
//Title: Air Compressors
//=============================================================================
clc
clear

//INPUT DATA
P1=1;//Pressure at point 1 in bar
P3=30;//Pressure at point 3 in bar
T1=300;//Temperature at point 1 in K
n=1.3;//Adiabatics gas constant

//CALCULATIONS
P2=sqrt(P1*P3);//Intermediate pressure in bar
rD=sqrt(P2/P1);//Ratio of cylinder diameters

//OUTPUT
mprintf('Ratio of cylinder diameters is %3.2f',rD)







//==============================END OF PROGRAM=================================
