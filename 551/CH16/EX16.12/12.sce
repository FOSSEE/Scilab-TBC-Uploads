clc
p0=30*10^3; //N/m^2
V0=152; //m/s
y=1.4;

rho_0=1.224; //kg/m^3
ps=p0+rho_0*V0^2/2;

rho_0=0.454; //kg/m^3
V0=sqrt(2*(ps-p0)/rho_0);
C0=sqrt(y*p0/rho_0);
M=V0/C0;

ccf=(1+M^2/4); //Compressibility correction factor

V=V0/sqrt(ccf); //True speed of aircraft
disp("True speed of aircraft =")
disp(V)
disp("m/s")