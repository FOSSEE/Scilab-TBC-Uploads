//Exa:1.15
clc;
clear;
close;
R1=0.02;//in ohms
X1=0.1;//in ohms
X2=X1;//in ohms
//T_ratio is defined as the ratio of maximum torque at one-half load and 25Hz frequency to maximum torque at rated voltage and frequency
T_ratio=(R1+sqrt(R1^2+(X1+X2)^2))/(2*(R1+sqrt(R1^2+((X1+X2)^2)/4)));
disp(T_ratio,'   maximum torque at one-half load and 25Hz frequency =');
disp('   times the maximum torque at rated voltage and frequency (T_max)');