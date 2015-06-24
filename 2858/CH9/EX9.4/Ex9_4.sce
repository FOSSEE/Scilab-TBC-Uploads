//example 9.4
clc; funcprot(0);
Gamma=15.9;
Gamma1=19.33-9.81;
GD=0.23;
CDL1=1.172;
L1=2;
L2=3;
Dth=(L1+L2)*GD*CDL1;
disp(Dth,"theoritical depth in m");
Dac=1.4*Dth;
disp(Dac,"actual depth in m");
printf("approximate it as 2 m");
//partb
CFL1=1.073;
GF=0.07;
Gammaa=(Gamma*L1^2+Gamma1*L2^2+2*Gamma*L1*L2)/(L1+L2)^2;
F=Gammaa*(L1+L2)^2*GF*CFL1;
disp(F,"force in kN/m");
//partc
GM=0.021;
CML1=1.036;
Mmax=Gammaa*(L1+L2)^3*GM*CML1;
disp(Mmax,"maximum moment in kN-m/m");

