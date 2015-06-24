// Example 6.11 //power coupled
clc;
clear;
close;
If=1.5;//in mA
Vf=20;//in volts
pin=If*Vf;//in Watts
nint=2;//efficiency    
tha=20;//in degree
po=((nint/100)*pin);//in Watt
nc=(sind(tha))^2;//
pf=nc*po;//in Watts
disp(pf*10^3,"power coupled in micro watts is")
