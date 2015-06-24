clc;funcprot(0);//Example 9.7
//Initilisation of Variables
T=5800;....//Temparature of sun in K
L1=0.35*10^-6;....//First Visible range of Wavelength in Mew m
L2=3.0*10^-6;....//Last Visible range of Wavelength in Mew m
R=5.67*10^-8;.....//Stefens boltsman constant
Tr=0.93;....//Glass Transmissivity of incident radiation
//calculations
L1T=L1*T;....//
L2T=L2*T;...//
F1=0.067;......//The radiation funtions for L1T from blackbody radiation table
F2=0.9764;......//The radiation funtions for L2T from blackbody radiation table
Ps=(F2-F1)*Tr*100;.....//Percentage of solar energy transmitted in %
disp(Ps,"Percentage of solar energy transmitted in %:")
