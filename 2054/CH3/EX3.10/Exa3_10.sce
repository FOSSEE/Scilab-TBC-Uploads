//Exa:3.10
clc;
clear;
close;
alpha_a=45;//in degrees
R_a=0.2;//in ohms
K=0.25;//in volts/rpm
V=400;//in volts
I_ao=5;//in amperes (no load armature current)
N=1500;//in rpm
I_a=100;//in amperes
V_ao=3*sqrt(3)*V*sqrt(2)*(1+cosd(alpha_a))/(sqrt(3)*%pi*2);//in volts
E_bo=V_ao-(I_ao*R_a);//in volts
N_o=E_bo/K;
disp(int(N_o),'No-Load Speed (in rpm)=');
E_b=N*K;//in volts
V_a=E_b+(I_a*R_a);//in volts
alpha_ao=acosd(((V_a*%pi*2)/(3*V*sqrt(2)))-1);
disp(alpha_ao,'Firing Angle (in degrees)=')