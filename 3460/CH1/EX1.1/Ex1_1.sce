//Find rms input noise levels
clc;
clear all;
// For 5 MHz Bandwidth
T=17+273; //converting temprature in kelvin from celcius
BW=5*(1e6); //given data
k=1.38*(1e-23); //boltzman constant in J/K
R=5*(1e3); // input resistance 5 kilo ohm
en=sqrt(4*k*T*BW*R);
disp(+'volt',en,'rms noise voltage is : ')
eout=en*300;
disp(+'volt',eout,'Audio output level is :')
en_out=en*300;
disp(+'volt',en_out,'the rms output noise level is  :')

// For 1 MHz Bandwidth
BW1=1; //given data in MHz
en1=sqrt(4*k*T*BW1*R);
disp(+'volt',en1,'rms noise voltage is : ')
eout1=en1*300;
disp(+'volt',eout1,'Audio output level is :')
en_out1=en1*300;
disp(+'volt',en_out1,'the rms output noise level is  :')

