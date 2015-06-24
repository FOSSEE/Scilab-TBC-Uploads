clc
d=1.5; // m
m=1.2; // kg
rate=0.0065; // K/m
R=287; // J/(kg.K)
T_0=288.15; // K
p_0=101*10^3; // Pa
g=9.81; // m/s^2

rho=m/(%pi*d^3/6);
rho_0=p_0/R/T_0;

// log(rho/rho_0)=(g/R*rate - 1)*log((T_0-rate*z)/T_0)

z=1/rate*(T_0-T_0*exp(log(rho/rho_0)/(g/R/rate-1)));

disp("The height above sea level to which the ballon will rise = ")
disp(z)
disp("m")

printf("The height above sea level to which the ballon will rise = %f m", z)