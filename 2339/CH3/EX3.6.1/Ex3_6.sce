clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
P1=25;
T1=27+273;
P2=5;
T2=20+273;
V1=0.7;
Et=1.43;
Pn=101.325;
Tn=273;

//Calculations
R=(Pn)/(Et*Tn);
m1=(Pn*V1)/(R*Tn);
V2=(m1*R*T1)/(P1*100);
m2=(P2*100*V2)/(R*T2);
mf=m1-m2;
printf('The mass of Oxygen used: %3.3f kg',mf);
printf('\n');
