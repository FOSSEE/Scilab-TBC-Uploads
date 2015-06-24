clc
V1=300; //m/s
p1=78; //kN/m^2
T1=313; //K
p2=117; //kN/m^2
R=287; //J/kg K
y=1.4;

//Let r1=p1/rho1
r1=R*T1;

V2=sqrt(2*(y/(y-1)*r1*(1-(p2/p1)^((y-1)/y)) + V1^2/2));
disp("Velocity of gas at section 2 =")
disp(V2)
disp("m/s")