//Exa:3.7
clc;
clear;
close;
V_dc=220;//in volts
V=230;//in volts
I_a1=10;//in amperes
N1=1500;//in rpm
N2=500;//in rpm
N3=-1000;//in rpm
R_a=2;//in ohms
E_b1=V_dc-(I_a1*R_a);//in volts
E_b2=E_b1*(N2/N1);//in volts
I_a2=I_a1/2;//in amperes
V_a1=E_b2+(I_a2*R_a);//in volts
alpha_a1=acosd((V_a1*%pi/(2*V*sqrt(2))));
disp(alpha_a1,'(a) Firing angle (in degrees) at half the rated torque=');
E_b3=E_b1*(N3/N1);//in volts
I_a3=I_a1;//in amperes
V_a2=E_b3+(I_a3*R_a);//in volts
alpha_a2=acosd((V_a2*%pi/(2*V*sqrt(2))));
disp(alpha_a2,'(b) Firing angle (in degrees) at rated motor torque=');