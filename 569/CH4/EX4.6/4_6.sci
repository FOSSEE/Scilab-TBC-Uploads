// Calculate the depth after one hour
clc;
Qm=0.16*10^-3;
Hin=1.2;
K1=Qm/(Hin)^0.5;
Qo=0.2*10^-3;
Ho=(Qo/K1)^2;
R=Hin/Qm;
C=0.1;
tc=R*C;
t=3600;
H=Ho+(Hin-Ho)*exp(-t/tc);
disp(H,'the depth after one hour(m)')