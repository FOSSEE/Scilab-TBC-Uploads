clc;funcprot(0);//Example 1.13
//Initilisation of Variables
T1=1173;.........//Temparature of black plate 1 in K
T2=313;.........//Temparature of black plate 2 in K
s=5.67*10^-8;.......//Stefan-Boltzmannconstant
//Calculations
Q=s*(T1^4-T2^4);........//Radiation of heat transfer in W/m^2
disp(Q/1000,"Radiation of heat transfer in kW/m^2:")
