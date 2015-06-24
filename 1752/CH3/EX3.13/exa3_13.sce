//Exa 3.13
clc;
clear;
close;
//given data
k=32;// in W/m^2 degree C
h=14.8;// in W/m^2 degree C
t_o=480;// in degree C
t_i=55;// in degree C
t_a=20;// in degree C
d=2.5*10^-2;// in m
rho=%pi*d;// in m
Ac=%pi*d^2/4;// in m^2
m=sqrt(h*rho/(k*Ac));
disp("In this case, the shaft heat from the pump towards motor");
disp("The temperature distribution considering the shaft as a fin insulated at the tip is given by")
disp("Q/Q_o= (t-t_a)/(t_o-t_a) = cosh(m(L-x))/cosh(m*L)")
// From (t-t_a)/(t_o-t_a) = cosh(m(L-x))/cosh(m*L)
L=acosh((t_o-t_a)/(t_i-t_a))/m;  // at x=L,t=t_i
disp("Length of shaft specified between the motor and the pump is : "+string(L)+" meter");
