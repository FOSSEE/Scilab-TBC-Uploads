
// Example 5.3 //threshold density and threshold current
clc;
clear;
close;
B=21*10^-3;//Gain factor in ampere per centimeter cube
alpha=10;// in per cm
L=250*10^-4;//length in meter
w=100;//in micro meter
r=0.32;
Jth=(1/B)*(alpha+(1/L)*log(1/r));//Threshold current in ampere per centimeter cube
ith=Jth*L*w*10^-4;//
disp(Jth,"threshold density in Ampere per centimeter square")
disp(ith*10^3,"threshold current in mA is")
