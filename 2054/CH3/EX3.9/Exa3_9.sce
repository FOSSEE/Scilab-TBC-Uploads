//Exa:3.9
clc;
clear;
close;
R_a=0.2;//in ohms
alpha_f=0;//in degrees
V=400;//in volts
R_f=250;//in ohms
K=1.3;//Volts/Ampere-radian/second
N=1200;//in rpm
I_a=60;//in amperes
V_f=3*sqrt(3)*V*sqrt(2)/(sqrt(3)*%pi);//in volts
I_f=V_f/R_f;//in amperes
E_b=K*I_f*2*%pi*N/60;//in volts
V_a=E_b+(I_a*R_a);//in volts
alpha_a=acosd((V_a*%pi)/(3*V*sqrt(2)));
disp(alpha_a,'Firing Angle (in degrees)=')