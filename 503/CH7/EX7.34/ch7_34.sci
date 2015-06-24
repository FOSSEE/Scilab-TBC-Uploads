//to determine speed, calculate internal torque developed on load and no load

clc;
V=220;
R_f=110;
I_f=V/R_f;
I_L=5;
I_a0=I_L-I_f;
R_a=.25;
E_a0=V-I_a0*R_a;
n=1200;
T_0=(E_a0*I_a0)/(2*%pi*n/60);
disp(T_0,'torque at no load(Nm)');

I_L=62;
I_a1=I_L-I_f;
E_a1=V-I_a1*R_a;
n1=(E_a1/E_a0)*n/.95;    disp(n1,'speed(rpm)');
T_1=(E_a1*I_a1)/(2*%pi*n1/60);
disp(T_1-T_0,'torque at on load(Nm)');

