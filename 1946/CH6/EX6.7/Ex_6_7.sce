// Example 6.6;//threshold density
clc;
clear;
close;
B=21*10^-3;//Gain factor in ampere per centimeter cube
alpha=10;// in per cm
L=250*10^-6;//length in meter
r=0.32
Jth=(1/B)*(alpha+(1/L)*log(1/r));//Threshold current in ampere per centimeter cube
disp(Jth,"threshold density in amper per centimeter cube")
