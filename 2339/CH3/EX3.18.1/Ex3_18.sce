clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=1.5;
m=2;
T1=27+273;
T2=207+273;
V2=V1;
M=28;
Ro=8.314;

R=Ro/M;

P1=(m*R*T1)/V1;
printf('The initial pressure of gas: %3.3f bar',P1/100);
printf('\n');

P2=(P1*T2)/T1;
printf('The final pressure of gas: %3.3f bar',P2/100);
printf('\n');
