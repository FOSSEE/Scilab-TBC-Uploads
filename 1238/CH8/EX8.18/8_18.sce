//calculating conversion time//
//example 18//
clc
//clears the command window//;
clear
//clears//
T=1/(1000*10^3);//time for one clock cycle//
disp(T)
n=10;//no. of bits//
t=(2^n-1)*T;//conversion time for 10 bit A/D converter//
disp('conversion time for digital ramp A/D converter:')
disp(t);//displaying result//
t1=T*10;
disp('conversion time for 10 bit successive approximation A/D converter:')
disp(t1)
