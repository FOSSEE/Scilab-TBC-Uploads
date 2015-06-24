//Caption:Find the ratio of the speed as a generator to speed as a motor
//Exa:2.19
clc;
clear;
close;
V=250;//in volts
I_L=80;//in amperes
R_a=0.12;//in ohms
R=100;//in ohms
I_f=V/R;//in amperes
I_a1=I_L+I_f;//in amperes (generator)
E_1=V+(I_a1*R_a);//in volts (generator)
I_a2=I_L-I_f;//in amperes (motor)
E_2=V-(I_a2*R_a);//in volts (motor)
Ratio=E_1/E_2;
disp(Ratio,'Ratio of speed as a generator to speed as motor=')