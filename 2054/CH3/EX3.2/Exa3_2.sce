//Exa:3.2
clc;
clear;
close;
alpha_f=0;
R_f=250;//in ohms
K_f=0.8;//torque constant
R_a=0.2;//in ohms
V_const=0.8;//in volt/Amperes-radian/sec
N=1000;// in rpm
T_d=50;//In Newton-meter
V_rms=220;//in volts
V_f=int(V_rms*sqrt(2)*(1+cosd(alpha_f))/%pi);// Feild Circuit Voltage (in volts)
I_f=V_f/R_f;//in Amperes
disp(I_f,'(a) Feild Current (in Amperes)=');
I_a=T_d/(K_f*I_f);//in amperes
w=2*N*%pi/60;// in radian/sec
E_b=V_const*w*I_f;//Back emf (in volts)
V_a=E_b+(I_a*R_a);//armature voltage (in volts)
alpha_a=acosd(((V_a*%pi/(V_rms*sqrt(2))))-1);
disp(alpha_a,'(b) Firing angle of the converter (in degrees)=');
P_o=int(V_a*I_a);//in watts
I=52.66;//in amperes
pf=P_o/(V_rms*I);
disp(pf,'(c) Power factor of the converter=')