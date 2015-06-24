clc

L=0.25; //m
D=0.15; //m
V2=0.0004; //m^3
Vs=%pi/4*D^2*L;
V_total=Vs+V2;
y=1.4;
V3=V2+5/100*Vs;
rho=V3/V2;
r=(Vs+V2)/V2; //V1=Vs+V2

n_diesel=1-1/y/r^(y-1)*((rho^y-1)/(rho-1));
disp("efficiency =")
disp(n_diesel)