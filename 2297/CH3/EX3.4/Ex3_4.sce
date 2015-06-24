// Example 3.4;amper-turns
clc;
close;
clear;
// given :
format('v',7)
r=150;//length in mm
t=12;//torque in N-m
f=t/(r*10^-3);//force in N
np=2;//no. of poles
fp=f/np;//force per pole in N
A=400;//area mm^2
mu=4*%pi*10^-7;//
b=sqrt((fp*2*mu)/(A*10^-6));//magnetic field in Tesla
H=b/mu;//in AT/m
tar=2*0.6*10^-3;//length in meter
atr=H*tar;//AT
disp(atr,"ampere turn required is, (AT)=")
//answer is wrong in the textbook
