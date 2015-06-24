clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
m=1;
T1=27+273;
T2=197+273;
V1=2.1;
R=0.287;
Cp=1.005;

W=m*R*(T2-T1);
printf('Work Done: %1.2f kJ',W);
printf('\n');

Q=m*Cp*(T2-T1);
U=Q-W;

printf('Change in Heat Energy: %1.2f kJ',Q);
printf('\n');
printf('Change in Internal Energy: %1.2f kJ',U);
printf('\n');

P=(m*R*T1)/(V1);
V2=(V1*T2)/(T1);
printf('Pressure: %1.2f kPa',P);
printf('\n');
printf('Final Volume: %1.1f m^3',V2);
printf('\n');
