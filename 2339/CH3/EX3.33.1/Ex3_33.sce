clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
D=0.550;
L=0.740;
r=12;
P1=100;
T1=27+273;
n=1.32;
R=0.287;
G=1.4;
V=((22/7)/4)*D*D*L;
V2=V/11;
V1=V2+V;
P2=P1*((r)^n);
T2=T1*((r)^(n-1));
printf('The Pressure at end of Compression: %3.3f kPa',P2);
printf('\n');
printf('The Temperature at end of Compression: %3.3f K',T2);
printf('\n');
m=(P1*V1)/(R*T1);
printf('The Mass in the cylinder: %3.3f kg',m);
printf('\n');
W=((P1*V1)-(P2*V2))/(n-1);
printf('The Work Done: %3.3f kJ',W);
printf('\n');
Q=((G-n)/(G-1))*W;
printf('The Heat Transfer: %3.3f kJ',Q);
printf('\n');
