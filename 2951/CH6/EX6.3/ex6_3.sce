clear;
clc;
B=150;// bandwidth in KHz
R1=30;
R2=60;// both resistors R1 and R2 in K-ohms
k=1.38*10^(-23);// boltzman constant
T=290; //temperature in Kelvin

Esquare=4*R1*10^(3)*k*B*10^(3)*T;
E=sqrt(Esquare);
 
disp("series combination Rseries(in K-ohms)=");
disp(R1+R2);
Eseries=E*sqrt(3);
disp("the thermal noise voltage (in volts) is");
disp(Eseries);

disp("series combination Rseries(in K-ohms)=");
disp(R1*R2/(R1+R2));
Eparallel=E*sqrt(2/3);
disp("the thermal noise voltage (in volts) is");
disp(Eparallel);
