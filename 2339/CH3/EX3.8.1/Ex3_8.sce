clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
m=0.18;
V1=0.15;
T1=15+273;
P1=100;
V2=0.056;
P2=400;
R=(P1*V1)/(m*T1);
printf('The Gas Constant: %3.3f kJ/kg K',R);
printf('\n');
M=8.3141/R;
printf('The Molecular Mass of Gas: %3.2f kg/kg mole',M);
printf('\n');
x=log(P2/P1);
y=log(V2/V1);
G=-(x/y);
Cv=R/(G-1);
printf('The Cv: %3.2f kJ/kg K',Cv);
printf('\n');
Cp=Cv+R;
printf('The Cp: %3.2f kJ/kg K',Cp);
printf('\n');
x=(G-1)/G;
y=P2/P1;
z=y^x;
T2=T1*z;
U=m*Cv*(T2-T1);
printf('The change in Internal Energy: %3.2f kJ',U);
printf('\n');
