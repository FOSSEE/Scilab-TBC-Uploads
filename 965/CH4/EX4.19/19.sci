clc;
clear all;
disp("temperature at centre")
R=60/1000;//m
rho=990;// kg/m^3
c=4170;//J/(kg.C)
k=0.58;// W/(m.C)
ti=25;// degree C
ta=6;// degree C
tau=2*3600;// seconds
h=5.8;// W/(m^2.C)

Lc=(4/3)*3.1416*R*R*R/(4*3.1416*R*R);// characteristic length
Bi=h*Lc/k;
if Bi>1
disp("Internal temperature gradients are not small and can not be neglected")
end
Bii=1/Bi;
Fo=k*tau/(rho*c*R^2);
r=0;// midplane of the apple
Bii=1/Bi;

T1=0.75;
t1=T1*(ti-ta)+ta;
disp("degree C",t1,"Temperature Tm =")

