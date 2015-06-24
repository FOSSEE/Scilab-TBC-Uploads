clc;funcprot(0);//Example 1.11
//Initilisation of Variables
T=500;........//Surface tempature in degree celsius
e=0.8;........//Surface emmissivity
s=5.67*10^-8;.......//Stefan-Boltzmannconstant
//Calculations
q=e*s*T^4;......///radiation flux in W/m^2
disp(q/1000,"radiation flux in kW/m^2:") 
