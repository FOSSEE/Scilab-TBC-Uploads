// Example 6.17;//Gain factor
clc;
clear;
close;
W=15;//width in per centimeter
Ith=50;//Current in mili ampere
r1=0.3;
r2=0.3;
alpha=10;// in per cm
L=50;//length in MICRO meter
Jth=(Ith/(L*10^-6*W));//Current density
B=(1/Jth)*(alpha+((1/(2*L*10^-04))*log(1/(r1*r2))));//gain factor in centimeter per ampere is
disp(B,"gain factor in centimeter per ampere is")
