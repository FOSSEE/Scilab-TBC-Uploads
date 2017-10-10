// Exa 15.5

clc;
clear all;

// Given data

Fl=100;// lower cutoff frequency in Hz
Fh=1000;// higher cutoff frequency in Hz
Af=4;// pass band gain

// Solution

// Wide bandpass filter design
// 1. For a low pass filter Fh=1 KHz =1/(2*%pi*R*C);

disp(" For a low pass filter section");
disp(" Let C1=0.01 micro farads ");
C1=0.01;// micro farads
R1=1/(2*%pi*Fh*C1*10^-6);
printf('The value of resistor = %.1f K ohms \n',R1/1000);

// 2. For a high pass filter Fl=100 Hz=1/(2*%pi*R*C);
disp(" For a high pass filter section");
disp(" Let C2=0.01 micro farads ");
C2=0.01;// micro farads
R2=1/(2*%pi*Fl*C2*10^-6);
printf(' The value of resistor = %d K ohms \n',R2/1000);

disp(" Since the pass band gain is 4, the gain of the high pass and low pass filter sections are set each equal to 2. Therefore, R1=Rf=10 K ohms for both sections.");

// Q for filter
Fc=sqrt(Fl*Fh);

Q=Fc/(Fh-Fl);
printf(' The value of Q =%.2f which is less than 10, as expected for a wide band pass filter\n',Q);
