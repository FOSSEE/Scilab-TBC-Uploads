//example 6.3
clc; funcprot(0);
cu=2800;
B=60;
L=100;
Df=5;
B=60;
Gamma=120;
A=60*100;
Q=25e6;
FS=5.14*cu*(1+0.195*B/L)*(1+0.4*Df/B)/(Q/A-Gamma*Df);
disp(FS,"factor of safety");

