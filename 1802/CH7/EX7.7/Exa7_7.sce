//Exa 7.7
clc;
clear;
close;
//Given data : 
format('v',6);
R=0.2;//in ohm/km
X=0.1;//in ohm/km
ZAM=((R+%i*X)/1000)*200;//in ohm
ZMB=((R+%i*X)/1000)*100;//in ohm
I1=100*(0.707-0.707*%i);//in A
I2=200*(0.8-0.6*%i);//in A
IAM=I1+I2;//in Ampere
VAM=ZAM*IAM;//in volts
VMB=ZMB*I2;//in volts
VAB=VAM+VMB;//in volts
magVAB=sqrt(real(VAB)^2+imag(VAB)^2);
disp(magVAB,"Total voltage drop(in volts) :");