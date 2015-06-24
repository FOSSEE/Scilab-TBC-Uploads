clc;
R_=8314.5;
m_=26;//kg/k mole
y=1.26;

R=R_/m_;
cv=R/[(y-1)*1000];
cp=y*cv;

T1=315+273;//K
p2=1.5;//bar
p1=3;//bar
T2=T1*p2/p1;

Q=cv*(T2-T1);
disp("heat rejected in part a:");
disp("kJ/kg",-Q);

T2=20;//K
T1=280;//K
m_=1;
Q=m_*cp*(T2-T1);
disp("heat rejected in part b");
disp("kW",-Q);
