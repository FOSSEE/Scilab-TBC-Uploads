// Example 6.22;// input impedence with feedback
clc;
clear;
close;
A= 1000;// open voltage gain
Beta=0.005;// feedback ratio
Zi=2;//input impedance without feedback in kiilo ohms
Zif= (1+A*Beta)*Zi;//input impedance with feedback in kiilo ohms
disp(Zif,"input impedance with feedback in kiilo ohms is")
