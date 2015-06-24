clc
clear

//Inputs
//The Values in the program are as follows:
//Temperature in Celcius converted to Kelvin(by adding 273)
//Pressure in bar converted to kPa (by multiplying 100)
//Volume in m^3
//Value of R,Cp and Cv in kJ/kg K
V1=0.15;
V2=3*V1;
P1=900;
P2=P1;
T1=300+273;
T3=T1;
n=1.5;
G=1.4;
R=0.287;
Cp=1.005;
m=(P1*V1)/(R*T1);
T2=(T1*V2)/V1;
Q1=m*Cp*(T2-T1);
W1=m*R*(T2-T3)/(n-1);
Q2=(G-n)*W1/(G-1);
P3=P2*((T3/T2)^(G/(G-1)));
Q3=m*R*T1*log(P3/P1);
H_rec=Q1;
printf('The Heat received: %3.1f kJ',H_rec);
printf('\n');
H_rej=0-(Q2+Q3);
printf('The Heat Rejected: %3.1f kJ',H_rej);
printf('\n');
eff=100*(1-(H_rej/H_rec));
printf('Efficiency: %3.2f percent',eff);
printf('\n');
