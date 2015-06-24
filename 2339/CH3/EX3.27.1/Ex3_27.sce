clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
m=0.19;
P1=1;
V1=0.16;
T1=17+273;
P2=4.1;
V2=0.046;
Ro=8.314;

R=(P1*100*V1)/(m*T1);
printf('Gas Constant: %1.2f kJ/kg K',R);
printf('\n');

M=Ro/R;
printf('Molecular Mass: %1.2f kg/kg mole',M);
printf('\n');

G=(log(P1/P2))/(log(V2/V1));
printf('Ratio of Specific Heats: %1.2f ',G);
printf('\n');

Cv=(R)/(G-1);
printf('Value of Cv: %1.2f kJ/kg K',Cv);
printf('\n');

Cp=G*Cv;
printf('Value of Cp: %1.2f kJ/kg K',Cp);
printf('\n');

T2=(P2*100*V2)/(m*R);
U=m*Cv*(T2-T1);
printf('Change in Internal Energy: %1.2f kJ',U);
printf('\n');

H=m*Cp*(T2-T1);
printf('Heat Transfer: %1.2f kJ',H);
printf('\n');

W=((P1*100*V1)-(P2*100*V2))/(G-1);
printf('Work Done: %1.2f kJ',W);
printf('\n');
