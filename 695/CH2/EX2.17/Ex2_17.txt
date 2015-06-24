//Caption:Find the (a)Demagnetizing AT per pole (b)Cross magnetizing AT per pole (c) number of turns per pole
//Exa:2.17
clc;
clear;
close;
P=40000;//in watts
E_g=400;//in volts
A=4;
Pole=4;
Z=2*30*12;//no. of conductors
theta_m=10;//in degrees
I_a=P/E_g;//armature current in amperes
I=I_a/A;//current in each conductor in amperes
AT_d=Z*I*theta_m/360;
disp(AT_d,'(a) Demagnetizing Ampere Turns per pole=');
AT_cm=Z*I*((1/(2*Pole))-(theta_m/360));
disp(AT_cm,'(b) Cross magnetizing Ampere Turns per pole=');
n=Z*I*0.8/(2*Pole*100);
disp(n,'(c) Number of turns per pole=')