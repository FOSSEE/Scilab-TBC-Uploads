// Example 6.27;// reduction in distortion
clc;
clear;
close;
a=54.8;// OPEN LOOP VOLTAGE GAIN IN dB
A= 10^(a/20);// open voltage gain
Beta=0.02;// feedback ratio
Af= (A/(1+(Beta*A)));//GAIN WITH FEEDBACL
dA= (1/(1+Beta*A))*100;//percentage change in distortion 
disp(dA,"percentage change in distortion is")
