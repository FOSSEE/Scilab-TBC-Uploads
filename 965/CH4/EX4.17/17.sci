clc;
clear all;
disp("time and temperature ")
L=6/2000;//m
rho=7800;// kg/m^3
c=460;// J/(kg.C)
k=55;// W/(kgm.C)
ti=30;// degree C
ta=2150;// degree C
t=1100;// degree C

Lc=L;// characteristic length
Bi=h*Lc/k;
if Bi>1
disp("Internal temperature gradients are not small and can not be neglected")
end
Fo=a*tau/Lc^2;
T1=(t-ta)/(ti-ta);
//T2=(to-ta)/(ti-ta);
//T3=(t-ta)/(to-ta);
T3=0.93;
T2=T1/T3;
Bii=1/Bi;
Fo=4.4;
//a*tau/Lc^2
a=k/(rho*c);
tau=Fo*Lc*Lc/a;
disp("sec",tau,"Tau =")
 to=0.495*(ti-ta)+ta;
 disp("Degree C",to,"Temperature inside To =")
 
