//Exa:3.24
clc;
clear;
close;
I_a1=36;//in amperes
N1=400;//in amperes
N2=600;//in amperes
alpha_1=100;//in degrees
V=675;//in volts
R=0.4;//in ohms
V_a1=sqrt(2)*V*(1+cosd(alpha_1))/%pi;//in volts
E_b1=V_a1-I_a1*R;//in volts
I_a2=I_a1*N2/N1;//in amperes
E_b2=E_b1*I_a2*N2/(I_a1*N1);//in volts
V_a2=E_b2+21.6;///in volts
alpha=acosd((V_a2*%pi/(sqrt(2)*V))-1);
disp(I_a2,'Armature current (in Amperes)=');
disp(alpha,'Firing angle (in degrees)=');