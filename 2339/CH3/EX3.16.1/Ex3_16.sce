clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P1=1.5;
V1=0.1;
V2=0.04;
P2=7.5;
T1=30+273;

//Using ideal gas equation
T2=(P2*V2*T1)/(P1*V1);
printf('The Value of Temperature of gas: %3.0f K',T2);
