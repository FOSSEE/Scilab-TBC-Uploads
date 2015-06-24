clc
T0=293; //K
T1=300; //K
T2=370; //K
cv=0.716;
cp=1.005;
R=0.287;
p1=1; //bar
p2=6.8; //bar
m=1; //kg
Wmax=-[cv*(T2-T1) - T0*[cp*log(T2/T1)-R*log(p2/p1)]];
n=1/(1-(log(T2/T1)/log(p2/p1)));
Wact=m*R*(T1-T2)/(n-1);

I=Wmax - Wact;
disp("Irreversibility = ")
disp(I)
disp("kJ/kg")