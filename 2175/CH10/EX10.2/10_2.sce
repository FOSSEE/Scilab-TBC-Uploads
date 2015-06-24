clc;
R_=8314.5;
R=R_/4;
cp=10^3*5.19;
y=1/[1-(R/cp)];
p1=6.9;
pc=([2/(y+1)]^[y/(y-1)])*p1;

T1=93+273;
p2=3.6;
T2=T1/[(p1/p2)^([y-1]/y)];

C2=[2*cp*(T1-T2)]^0.5;
v2=R*T2/(10^5*p2);

A2=1;
m=A2*C2/v2;
disp("kg/s",m,"mass flow per square meter of exit area:");

//partII
m_=30;
R=R_/m_;
cp=1880;
y=1/[1-(R/cp)]

p2=3.93;
T2=337;
pc=p1*[2/(y+1)]^[(y/(y-1))];
Tc=T1*[2/(y+1)];
Cc=[y*R*Tc]^0.5;
v2=R*T2/(10^5*p2);

m=A2*Cc/v2
disp("kg/s",m,"mass flow per square meter of exit area is:");
