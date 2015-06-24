// Example 4.10
clc;
clear;
close;
format('v',6);
// Given data
R= 500;// in kΩ
R= R*10^3;// in Ω
C= 10;// in µF
C= C*10^-6;// in F
vout= 12;// in V
v= -0.5;// in V
vout_by_t= -1/(R*C)*integrate('-t','t',0,1);//in V/sec
// Time required for saturation of output voltage
t= vout/vout_by_t;// in sec
disp(t,"The time duration required for saturation of output voltage in seconds is : ")






