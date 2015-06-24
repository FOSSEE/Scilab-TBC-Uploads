//Exa:1.42
clc;
clear;
close;
J=630;//in kg-m^2
T_f=1.4*9.81;//in N-m
T_e=165*9.81;//in N-m
T_b=T_e+T_f;//in N-m
Beta=T_b/J;//in rad/sec^2
f=50;//in hertz
P=8;//no of poles
N_s=120*f/P;//in rpm
w_1=2*%pi*N_s/60;//in rad/sec
t=w_1/Beta;
disp(t,'Time taken to stop the motor (in seconds)=');
n=w_1^2/(2*%pi*Beta*2);
disp(n,'Number of revolutions made=');