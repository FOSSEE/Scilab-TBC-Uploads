//Example 1.20.2: Peak Current and turn off time
clc;
clear;
close;
format('v',6)
//given data :
Vs=200;//in volts
R1=10;// in ohm
R2=R1;
Vc=200;//in volts
C=10;// in micro-farad
I1=Vs/R1;
I2=(Vs+Vc)/R2;
It1=I1+I2;
disp(It1,"Peak Current,It1(A) = ")
Tc=(R1*C)/1.44;
disp(Tc,"The Circuit Turn Off Time,Tc(micro-sec) = ")
