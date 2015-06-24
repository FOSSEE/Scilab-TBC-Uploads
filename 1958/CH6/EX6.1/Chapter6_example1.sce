clc
clear
//Input data
a=(2.1*10^-2)//Vanderwaals constant a for neon gas in Nm^4/mol^2
b=(1.71*10^-5)//Vanderwaals constant b for neon gas in m^3/mol
R=8.314//Gas constant in J/mol.K

//Calculations
Tc=(8*a)/(27*b*R)//Critical temperature in K
Vc=(3*b)/10^-5//Critical volume in m^3/mol * 10^-5
Pc=(a/(27*b^2))/10^6//Critical pressure in N/m^2 * 10^6

//Output 
printf('Critical temperature is %3.2f K \n Critical volume is %3.2f * 10^-5 m^3/mol \n Critical pressure is %3.3f * 10^6 N/m^2',Tc,Vc,Pc)
