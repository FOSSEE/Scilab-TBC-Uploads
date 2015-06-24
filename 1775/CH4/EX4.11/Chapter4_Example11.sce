//Chapter-4, Illustration 11, Page 174
//Title: Steam Nozzles and Steam Turbines
//=============================================================================
clc
clear

//INPUT DATA
P1=10;//Pressure at point 1 in bar
T1=452.9;//Temperature at point 1 in K
P2=4;//Pressure at point 2 in bar
n=1.3;//Adiabatic gas constant
Ps=0.803;//Saturation pressure at T2 in bar
Ts=143.6;//Saturation temperature at P2 in oC
//CALCULATIONS
x=(n-1)/n;//Ratio
T2=((P2/P1)^x)*T1;//Temperature at point 2 in K
Ds=P2/Ps;//Degree of supersaturation
Du=Ts-(T2-273);//Degree of undercooling

//OUTPUT
mprintf('Degree of supersaturation is %3.2f \n Degree of undercooling %3.0f oC',Ds,Du)







//==============================END OF PROGRAM=================================
