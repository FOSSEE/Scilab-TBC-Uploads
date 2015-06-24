//Exa 4.3
clc;
clear;
close;
//given data
k=40;// in W/mK
rho=8200;// in kg/m^3
C=400;// in J/kgK
D=6*10^-3;// in m
R=D/2;
t_i=30;// in degree C
t_infinite1=400;// for 10 sec in degree C
t_infinite2=20;// for 10 sec in degree C
h=50;// in W/m^2K

// Part(a)
//l_s= V/A = R/3
l_s= R/3;// in m
//toh= rho*V*C/(h*A) = rho*C*l_s/h
toh= rho*C*l_s/h;// in sec
disp(toh,"Time constance in sec")

// Part (b)
Bi= h*l_s/k;
// since Bi < 0.1 , hence lumped heat capacity analysis is valid. Now , temperature attained by junction in 10 seconds when exposed to hot air at 400 degree C
toh=10;// in sec
// (t-t_infinite1)/(t_i-t_infinite1)= %e^(-h*A*toh/(rho*V*C)) = %e^(-h*toh/(rho*l_s*C))
t= %e^(-h*toh/(rho*l_s*C))*(t_i-t_infinite1)+t_infinite1;// in degree C

disp("The junction is taken out from hot air stream and placed in stream of still air 20 degree C. The initial temperature in this case will be "+string(t)+" .")
t_i=t;
toh=20;// in sec
t= %e^(-h*toh/(rho*l_s*C))*(t_i-t_infinite2)+t_infinite2;// in degree C
disp(t,"The temperature attained by junction in degree C");

// Note: In the last, calculation to find the value of t is wrong so Answer in the book is wrong






