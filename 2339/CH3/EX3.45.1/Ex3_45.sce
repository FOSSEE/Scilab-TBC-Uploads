clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
m=1;
Cp=1.005;
P1=100;
T1=17+273;
T2=T1;
P2=2500;
printf('Final Temperature: %2.2f K',T2);
printf('\n');

V1=(260*T1)/(P1*1000);
V2=(P1*V1)/P2;
printf('Final Volume: %2.5f m^3',V2);
printf('\n');
n=P2/P1;
printf('Compression ratio: %2.0f ',n);
printf('\n');
H=m*Cp*(T2-T1);
printf('Change in Enthalpy: %2.2f kJ',H);
printf('\n');
W=P1*V1*log(P1/P2);
printf('Work done: %2.2f kJ/kg',W);
printf('\n');
