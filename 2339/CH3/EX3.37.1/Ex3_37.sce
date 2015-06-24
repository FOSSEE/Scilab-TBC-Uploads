clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
T1=430;
T2=289.25;
P2=100;
P1=400;
G=1.4;
V1=0.2;
R=287;
Q=60;
Cp=1.005;
T2=T1*((P2/P1)^((G-1)/G));
V2=V1*((P1/P2)^(1/G));
m=(P1*1000*V1)/(R*T1);
W1=(m*(R/1000)*(T1-T2))/(G-1);
T3=(Q/(m*Cp))+T2;
V3=(V2*T3)/T2;
W2=P2*(V3-V2);
W=W1+W2;
printf('The Net Work Done: %3.3f kJ',W);
printf('\n');
n=((m*(R/1000)*(T1-T3))/W)+1;
printf('The value of n: %3.2f ',n);
printf('\n');
