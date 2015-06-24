clc
D=0.25; //m
r=9; 
L=0.3; //m
cv=0.71; //kJ/kg K
cp=1; //kJ/kg K
p1=1; //bar
T1=303; //K
p3=60; //bar
p4=p3;
n=3; //number of working cycles/ sec
y=1.4;
R=287;

disp("(i) Air standard efficiency")
Vs=%pi/4*D^2*L;

Vc=Vs/(r-1);
V1=Vs+Vc;
p2=p1*(r)^y;
T2=T1*r^(y-1);
T3=T2*p3/p2;
rho=4/100*(r-1)+1;
T4=T3*rho;

T5=T4*(rho/r)^(y-1);
p5=p4*(r/rho)^(y);

Qs=cv*(T3-T2)+cp*(T4-T3)

Qr=cv*(T5-T1);

n_airstandard=(Qs-Qr)/Qs;
disp("efficiency =")
disp(n_airstandard)


disp("(ii) Power developed by the engine")
m=p1*10^5*V1/R/T1;

W=m*(Qs-Qr);

P=W*n;
disp("P=")
disp(P)
disp("kW")