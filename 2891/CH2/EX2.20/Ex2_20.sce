// Exa 2.20
clc;
clear;
close;
// given :
sigma=10^-2 // conductivity of earth in mho/m
epsilon_r=10 // relative permittivity
mu_r=2 // relative permeability
epsilon_0=(1/(36*%pi))*10^-9 // permittivity in free space
epsilon=epsilon_r*epsilon_0 // permittivity
f1=50 // frequency in Hz
omega1=2*%pi*f1 // angular frequency in rad/sec
disp("When frequency=50Hz:")
k1=sigma/(omega1*epsilon)
disp(k1,"K1 is equal to")
disp("since k1>>1 hence it behaves like a good conductor:")
f2=1 // frequency in kHz
f2=1*10^3 // frequency in Hz
omega2=2*%pi*f2 // angular frequency in rad/sec
disp("When frequency=1kHz:")
k2=sigma/(omega2*epsilon)
disp(k2,"K2 is equal to")
disp("since k2>>1 hence it behaves like a good conductor:")
f3=1 // frequency in MHz
f3=1*10^6 // frequency in Hz
omega3=2*%pi*f3 // angular frequency in rad/sec
disp("When frequency=1MHz:")
k3=sigma/(omega3*epsilon)
disp(k3,"K3 is equal to")
disp("since k3=18 hence it behaves like a moderate conductor:")
f4=100 // frequency in MHz
f4=100*10^6 // frequency in Hz
omega4=2*%pi*f4 // angular frequency in rad/sec
disp("When frequency=100MHz:")
k4=sigma/(omega4*epsilon)
disp(k4,"K4 is equal to")
disp("since k4=0.18 hence it behaves like a quasi-dielectric:")
f5=10 // frequency in GHz
f5=10*10^9 // frequency in Hz
omega5=2*%pi*f5 // angular frequency in rad/sec
disp("When frequency=10GHz:")
k5=sigma/(omega5*epsilon)
disp(k5,"K5 is equal to")
disp("since k5<<1 hence it behaves like a good dielectric:")
