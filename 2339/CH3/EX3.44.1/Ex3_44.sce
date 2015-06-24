clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg Km=1;
V1=0.15;
P1=1;
V2=0.05;
G=1.4;

//Calculations
P2=(V1*P1)/V2;
W_it=P1*100*V1*log(P1/P2);
printf('Work done in Isothermal process: %2.2f kJ',W_it);
printf('\n');
P2=P1*((V1/V2)^G);
W_ad=((P1*100*V1)-(P2*100*V2))/(G-1);
printf('Work done in Adiabatic process: %2.2f kJ',W_ad);
printf('\n');
