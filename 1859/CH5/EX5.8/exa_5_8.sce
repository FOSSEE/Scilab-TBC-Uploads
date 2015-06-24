// Exa 5.8
clc;
clear;
close;
// Given data
n=3;
R=1/10^n;
fs1=1;// full scale range of 1 v
r1= fs1*R;// resolution for full scale range of 1 V
disp(r1,"Resolution for full scale range of 1 V")
fs2=10;// full scale range of 10 v
r2= fs2*R;// resolution for full scale range of 10 V
disp(r2,"Resolution for full scale range of 10 V")
// The display for 2 V reading on 10 V scale of 3*1/2 digital meter would be 02.00 i.e
reading=2;
LSD= 5*R;// in volt
Total_pos_Error= reading*0.5/100+LSD;//in volt
disp(Total_pos_Error,"Total possible error in volt")
