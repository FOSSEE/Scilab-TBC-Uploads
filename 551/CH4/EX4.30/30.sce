clc
n=1.3;
m=1; //kg
p1=1.1; //bar
T1=300; //K
p2=6.6; //bar
R0=8314;
M=30;
cp=1.75; //kJ/kg.K
R=R0/M/1000; //kJ/kg.K
cv=cp - R;
y=cp/cv;
T2=T1 *(p2/p1)^((n-1)/n);
W=R*(T1-T2)/(n-1);
Q=((y-n)/(y-1))*W;
disp("Heat supplied = ")
disp(Q)
disp("kJ/kg")