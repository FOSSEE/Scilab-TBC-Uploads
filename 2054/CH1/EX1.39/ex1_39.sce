//Exa:1.39
clc;
clear;
close;
I_a1=100;//in Amperes
V=230;//in volts
R_a=0.1;//in ohms
E_b1=V-I_a1*R_a;//in volts
N1=500;//in rpm
N2=800;//in rpm
x=(V-sqrt((V^2)-4*10*352))/(2*10);
disp('Flux is reduced by');
disp(x^-1,);
disp('times to get motor speed of 800 rpm');
I_a2=I_a1*x;//in amperes
E_b2=V-I_a2*R_a;//in volts
T_2=E_b2*I_a2*60/(2*%pi*N2);//in N-m
T_3=800;//in N-m
I_a3=I_a2*T_3/T_2;//in Amperes
E_b3=V+I_a3*R_a;//in amperes
N3=E_b3*N2/E_b2;
disp(ceil(N3),'Speed (in rpm)=');