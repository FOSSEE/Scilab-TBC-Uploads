//Exa 3.1
clc;
clear;
close
// given data
format('v',5);
d=20;// in mm
d=d*10^-3;//in m
h=5;// in W/m^2K
T_0=100;// in degree C
T_infinite=20;// in degree C
K=15;// in W/m-K
//(i)Temperature distribution equation
disp("(i) Temperature distribution equation");
disp("theta/theta_0= (T-T_infinite)/(T_0-T_infinite) = %e^-m*x ")
rho=%pi*d;// in m
A=%pi*d^2/4;//in square meter
m=sqrt(h*rho/(K*A));
disp("m = "+string(m));
disp("Temperature distribution equation is ")
disp("theta/theta_0= (T-T_infinite)/(T_0-T_infinite) = %e^-"+string(m)+"*x");

//(ii)Heat loss from the rod
t_0=100;// in degree C
t_infinite=20;// in degree C
q=sqrt(K*A*h*rho)*(t_0-t_infinite);
disp("(ii) Heat loss from the road is : "+string(q)+" watt");



 
