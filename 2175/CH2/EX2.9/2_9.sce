clc;
p1=7*10^5;//bar
V1=0.003;//m^3/kg
m=0.01;
T1=131+273;//K
R_=8314.5;

R=p1*V1/(m*T1);

m_=R_/R;
disp("tha molar mass of tha gas is:");
disp("kg/k mole",m_);

p2=1*10^5;//bar
V2=0.02;//m^3
m=0.01;
R=520;
T2=p2*V2/(m*R);
disp("final temperature is:");
disp("C",T2-273);
