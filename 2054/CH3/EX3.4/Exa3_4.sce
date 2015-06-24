//Exa:3.4
clc;
clear;
close;
R_a=0.06;//in ohms
N1=875;// in rpm
N2=750;//in rpm
V_rms=220;//in volts
V_dc=200;//in volts
I_a=150;//in amperes
E_b1=V_dc-(I_a*R_a);//Back emf (in volts)
E_b2=E_b1*(N2/N1);// in volts
V_a=E_b2+(I_a*R_a);//armature voltage (in volts)
alpha_a=acosd((V_a*%pi/(2*V_rms*sqrt(2))));
disp(alpha_a,'Firing angle (in degrees)=');