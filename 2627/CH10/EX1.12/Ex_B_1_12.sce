//Part B Ex 1.12
clc;clear;close;
format('v',5);
C=10;//micro F
R=1;//kohm
T=C*10^-6*R*1000;//seconds
disp(T,"Time constant(seconds)");
omega_c=1/T;//rads/s
disp(omega_c,"omega_c(rads/s)");
fc=1/2/%pi/T;//Hz
disp(fc,"fc(Hz)");
