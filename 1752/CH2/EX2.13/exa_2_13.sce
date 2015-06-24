//Exa 2.13
clc;
clear;
close;
//given data
d1=1*10^-3;// in m
d2=3*10^-3;// in m
r1=d1/2;
r2=d2/2;
kp=384;// in W/mK
kw=0.35;// in W/mK
rho=1.96*10^-8;// in Wm
t_s=95;// in degree C
t_infinite=40;// in degree C
h=8.75;// in W/m^2K
q_by_L= (t_s-t_infinite)/(log(r2/r1)/(2*%pi*kp)+1/(2*%pi*r2*h));
// Also q_by_L = I^2*R/L = I^2*rho/(%pi/4*d^2)
I= sqrt(q_by_L*(%pi/4*d1^2)/rho);// in amp
disp(I,"The maximum steady state current in amphere")