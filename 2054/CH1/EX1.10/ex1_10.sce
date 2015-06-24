//Exa:1.10
clc;
clear;
close;
V=230;//in volts
I_1=90;//in amperes
R_a=0.08;//in ohms
R_se=0.05;//in ohms
R_m=R_a+R_se;//in ohms
R=1.5;//in ohms
E_b1=V-I_1*(R_m+R);//in volts
E_2=180;//in volts
N2=700;//in rpm
N1=N2*(E_b1/E_2);
disp(ceil(N1),'Speed (in rpm)=');
T=9.55*E_b1*I_1/N1;
disp(T,'Torque (in Newton-meter)=')