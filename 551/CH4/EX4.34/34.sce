clc
cv=0.71; //kJ/kg.K
R=0.287; //kJ/kg.K
d=8; //cm
l=3.5; //cm
S=150; //N/cm
p1=30; //N/cm
V1=45; //cm^3
T1=293; //K
cv=0.71; //kJ/kg.K
R=0.287; //kJ/kg.K
A=%pi/4*d^2;
C=p1-S/A^2*V1;
dV=l*A;
V2=V1+dV;
p2=S/A^2*V2 + C;
W=integrate('A^2/S*p/100', 'p', p1, p2);
T2=p2*V2*T1/p1/V1;
m=p1*V1/R/T1/10^5; //kg
dU=m*cv*(T2-T1);
Q_12=dU + W*10^(-3);
disp("Amount of heat added to the system = ")
disp(Q_12)
disp("kJ")