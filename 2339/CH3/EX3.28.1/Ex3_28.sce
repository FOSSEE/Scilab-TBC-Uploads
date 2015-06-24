clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=0.19;
P1=5;
T1=190+273;
P2=1;
H=100;
G=1.4;
R=0.287;
Cp=1.005;

V2=V1*((P1/P2)^(1/G));
W=((P1*100*V1)-(P2*100*V2))/(G-1);
m=(P1*100*V1)/(R*T1);
T2=T1*((P2/P1)^((G-1)/G))
x=H/(m*Cp);
T3=x+T2;

V3=(V2*T3)/T2;
Wo=P2*100*(V3-V2);
Wf=W+Wo;
printf('Total Work Done: %1.2f kJ',Wf);
printf('\n');


