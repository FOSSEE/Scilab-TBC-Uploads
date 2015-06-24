clc
cp=1; //kJ/kg.K
cv=0.711; //kJ/kg.K
V1=1.6; //m^3
V2=V1;
p1=5*10^5; //Pa
T1=373; //K
p2=1*10^5; //Pa
R=287;
y=1.4;

m1=p1*V1/R/T1;
T2=T1*(p2/p1)^((y-1)/y);
m2=p2*V2/R/T2;
KE=(m1*cv*T1)-(m2*cv*T2)-(m1-m2)*cp*T2;
disp("Kinetic energy of discharge air =")
disp(KE)
disp("kJ")

disp("This is the exact answer when using proper value of cv")