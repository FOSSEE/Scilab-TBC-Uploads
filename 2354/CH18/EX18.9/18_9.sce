//example 18.9
clc; funcprot(0);
// Initialization of Variable
sigma=5.67e-8;
D1=0.02;
D2=0.05;
D3=0.035;
pi=3.14;
T1=77;
T2=300;
qwo=(sigma*pi*D1*(T1^4-T2^4))/(1/0.02+(1-0.05)/0.05*(D1/D2));
disp(qwo,"heat rate per unit length in W/m");
Rtot=(1-0.02)/(0.02*pi*D1)+1/pi/D1+2*(1-0.02/(0.02*pi*D3)+1/pi/0.035+(1-0.05)/pi/D2^2);
qw=sigma*(T1^4-T2^4)/1817;
disp(qw,"heat rate of radiation in W/m");
k=(qw-qwo)/qwo*100;
disp(k,"percentage change of heat transfer in %");
clear()
