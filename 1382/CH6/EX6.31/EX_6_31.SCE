// Example 6.31;//gain and harmonic distortion
clc;
clear;
close;
A2= 200;// open loop voltage gain
Beta=0.1;// feedback ratio
D2=0.02;//first stage distortion
D2d= (D2/(1+Beta*A2))*100;//second stage distortion
A2d=A2/(1+Beta*A2);//GAIN
A1=round(A2/A2d);//gain of first stage
disp(A1,"gain of first stage is")
disp(D2d,"second stage distortion is")
disp("second stage distortion is calculated wrong in the book")
