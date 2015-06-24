clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
n=1.3;
m=1;
T1=300;
T2=200;
W=90;
Ro=8.3143;
R=((n-m)*W)/((T1-T2)*m);
M=Ro/R;
printf('The molecular mass of gas is: %3.1f kg/kg mole',M);
printf('\n');
