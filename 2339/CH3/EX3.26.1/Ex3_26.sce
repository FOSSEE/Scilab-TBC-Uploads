clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=0.5;
P1=0.3;
V2=0.1;
P2=(P1*V1)/(V2);
printf('Final Pressure: %1.2f bar',P2);
printf('\n');

W=(P1*100*V1)*(log(V2/V1));
printf('Work Done: %1.2f kJ',W);
printf('\n');

printf('Change in Internal Energy: 0 kJ as it is Isothermal Process');
printf('\n');

printf('Change in Heat Energy: %1.2f kJ',W);
printf('\n');
