clc;
v1!v2=18;
y=1.4;
T1=293;//K
T2=v1!v2^(y-1)*T1;

p3=69;//bar
p1=1.01;//bar
p2=v1!v2^y*p1
T3=p3*T2/p2

cv=0.718;
cp=1.005;
T4=cv*(T3-T2)/cp+T3;

v5!v4=v1!v2*(T3/T4);
T5=T4/[(v5!v4)^(y-1)];
Q1=2*cv*(T3-T2);

eta=(Q1-[cv*(T5-T1)])/Q1
disp("efficiency is")
disp("%",eta)
