clc
//Example 7.18
//Calculate the torque exerted on the rotor in a centrifugal pump
q=100//gal/min
rho=8.33//lbm/gal
m=rho*q//lbm/min
f=1800//rev/min frequency of impeller
omega=2*(%pi)*f//rad/min
r_in=1/12//ft
r_out=6/12//ft
//1 min = 60 sec
//1 lbf.s^2 = 32.2 lbm.ft
tou=m*omega*(r_out^2-r_in^2)/32.2/3600//lbf.ft
printf("The torque exerted on the rotor is %f lbf.ft",tou);