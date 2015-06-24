//Exa 4.2
clc;
clear;
close;
//given data
k=40;// in W/mK
rho=7800;// in kg/m^3
C=450;// in J/kgK
d=20*10^-3;// in m
r=d/2;
t_i=400;// in degree C
t=85;// in degree C
t_infinite=25;// in degree C
h=80;// in W/m^2K
//l_s=V/A = (4/3*%pi*r^3)/(4*%pi*r^2) = r/3
l_s=r/3;// in m
Bi= h*l_s/k;
// since Biot number is less than 0.1, hence lumped heat capacity system analysis can be applied

// Part(a)
// Formula (t-t_infinite)/(t_i-t_infinite)= %e^(-h*A*toh/(rho*V*C)) = %e^(-h*toh/(rho*l_s*C))
toh= -log((t-t_infinite)/(t_i-t_infinite))*(rho*l_s*C)/h;// in sec
disp(toh,"The time require to cool the sphere in sec");

// Part(b)
// dtBYdtoh = h*A*(t_i-t_infinite)/(rho*V*C) = h*(t_i-t_infinite)/(rho*l_s*C)
dtBYdtoh = h*(t_i-t_infinite)/(rho*l_s*C);// in degree C/sec
disp(dtBYdtoh,"Initial rate of cooling in degree C/sec");

// Part(c)
A=4*%pi*r^2;
toh=60;
q_in= h*A*(t_i-t_infinite)*%e^(-h*toh/(rho*l_s*C));// in watt
disp(q_in,"Instantaneous heat transfer rate in watt");

// Part(d) Total energy transferred during first one minute
V=4/3*%pi*r^3;
TotalEnergy = rho*C*V*(t_i-t_infinite)*(1-%e^(-h*toh/(rho*C*l_s)));
disp(TotalEnergy,"Total energy transferred during first one minute in watt")

// Note: Answer of first and last part in the book is wrong
