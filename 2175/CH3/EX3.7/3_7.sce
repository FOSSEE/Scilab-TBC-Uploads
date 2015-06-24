clc;
T1=300;//K
p2=6.6;//bar
p1=1.1;//bar
n=1.3;
T2=T1*[(p2/p1)^((n-1)/n)];

R_=8.3145;
m_=30;
R=R_/m_;

cp=2.10;
cv=cp-R;
y=cp/cv;
W=R*(T2-T1)/(n-1);
Q=(n-y)/(y-1)
disp("heat supplied is:");
disp("kJ/kg",Q);

m_=40;
R=R_/m_;
cp=0.520;//kJ/kg
cv=cp-R;
y=cp/cv;
W=R*(T1-T2)/(n-1);
Q=[(n-y)/(y-1)]*W
disp("heat rejected is:")
disp("kJ/kg",Q)
