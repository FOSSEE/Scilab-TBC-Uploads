// Example 6.32;pole frequency 
clc;
clear;
close;
R2=2*10^5;//effective resistance in ohms
Av2=1000;//gain of second stage
Cf=20;//feedback capacitor in pico farad
Cm=(1+Av2)*Cf;//effective miller capacitance in pico farad
fp1= 1/(2*%pi*R2*Cm*10^-12);//pole frequency in hertz
disp(fp1,"pole frequency in hertz is")
