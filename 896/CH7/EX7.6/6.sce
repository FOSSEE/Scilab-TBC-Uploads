clc
//Example 7.6
//Calculate the force exerted on the flange
dP=100//lbf/in^2
A_out=1//in^2
rho=62.3//lbm/ft^3
ratio_A=0.1//dimentionless
//1 ft = 12 in
//1 lbf.s^2 = 32.2 lbm.ft
v_out=(2*dP/rho/(1-ratio_A^2)*32.2*144)^0.5//ft/s
v_in=12.3//ft/s
m=rho*A_out*v_out/144//lbm/s
F=m*(v_out-v_in)/32.2//lbf
printf("The force exerted on the flange is %f lbf",F);