//Exa 11.1
clc;
clear;
close;
//Given data
R1=15;//in kohm
R2=15;//in kohm
C1=0.005;//in uF
C2=0.005;//in uF
R=R1;//in Kohm
C=C1;//in uF
T=0.69*(R*10^3*C*10^-6+R*10^3*C*10^-6);//in second
f=1/T;//in Hz
disp(f*10^-3,"Frequency of oscillators in KHz : ");