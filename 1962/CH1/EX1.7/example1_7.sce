//example 1.7
//page 21
clc; funcprot(0);
//initialisation of variable
//part1
y=poly([0 0.01 -1],'x','coeff');
z=roots(y);
disp(z(1),"distance between walls (m)");
//part2
mu=1.005/1000;//viscosity
sigma=-mu*10*(0.01-2*z(1));
disp(sigma,"shear stress on the wall(N/m^2)=");
//part3
y=20*10^-6;
sigma=mu*10*(0.01-2*y);
disp(sigma,"shear stress on the wall(N/m^2)=");
//part4
y=0.01/2;
disp(y,"distance at which stress becomes zero(m)=");
//part5
y=0.01/2;
disp(y,"distance at which velocity is maximum(m)=");
clear
