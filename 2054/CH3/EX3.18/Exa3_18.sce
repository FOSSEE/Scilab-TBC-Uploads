//Exa:3.18
clc;
clear;
close;
alpha=0.6;//duty cycle
alpha1=0.1;//duty cycle
alpha2=0.9;//duty cycle
V=400;//in volts
R_a=0.1;//in ohms
K=4;//Motor Constant (in Volts/radians)
I_a=150;//in Amperes
P_in=alpha*V*I_a/1000;
disp(P_in,'(a) Power input (in Kilo-Watts)=');
V_a=alpha*V;//in volts
E_b=V_a-(I_a*R_a);//in volts
N=60*E_b/(2*%pi*K);
disp(int(N),'(b) Motor Speed (in rpm)=');
T=E_b*I_a*60/(2*%pi*N);
disp(T,'(c) Torque developed (in Newton-meter)=');
E_b1=(alpha1*V)-(I_a*R_a);//in volts
N1=60*E_b1/(2*%pi*K);
disp(ceil(N1),'(d) Minimum Speed (in rpm)=')
E_b2=(alpha2*V)-(I_a*R_a);//in volts
N2=60*E_b2/(2*%pi*K);
disp(ceil(N2),'    Maximum Speed (in rpm)=')