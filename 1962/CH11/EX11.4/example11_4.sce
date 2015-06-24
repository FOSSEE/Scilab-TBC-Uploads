
//example 11.3
//page 426
clc; funcprot(0);
//initialisation of variable
//part1
S=1;
rho=S*1000;//density
Beta=2.2*10^9;//N/m^2
c=sqroot(Beta/rho);
disp(c,"speed of sound in water(m/s)=");
//part2
S=0.79;
rho=S*1000;//density
Beta=1.21*10^9;//N/m^2
c=sqroot(Beta/rho);
disp(c,"speed of sound in ethanol (m/s)=");
//part3
k=1.4;
R=287;
T=20+273;//temperature
c=sqroot(k*R*T);
disp(c,"speed of sound in air (m/s)=");
