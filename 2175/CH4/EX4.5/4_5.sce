clc;
R_=8314.5;
m_=28;
R=R_/m_
p1=1.05;//bar
p2=4.2;//bar
s2=R*log(p1)/1000;
s1=R*log(p2)/1000;
disp("change of entropy is:");
disp("kJ/kg K",s2-s1);

T=15+273;
V=0.03;
m=p1*V*10^5/(R*T);
S1=m*s1;
S2=m*s2;
Q=T*(S1-S2);
disp("heat rejected is:");
disp("kJ/kg",Q);

W=-Q;
disp("work done is:");
disp("kJ",W)
