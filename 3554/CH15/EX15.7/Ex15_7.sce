// Exa 15.7

clc;
clear all;

// Given data
// Refering fig. 15.20- Wide band reject filter

Fl=100;// Hz
Fh=1000;// Hz

// Solution
// 1. For a high pass filter Fh=1 KHz =1/(2*%pi*R*C);
disp(" For a high pass filter section");
disp(" Let C1=0.01 micro farads ");
C1=0.01;// micro farads
R1=1/(2*%pi*Fh*C1*10^-6);
printf('  The value of resistor = %.1f k Ohms \n',R1/1000);

// 2. For a low pass filter Fl=100 Hz=1/(2*%pi*R*C);
disp(" For a low pass filter section");
disp(" Let C2=0.01 micro farads ");
C2=0.01;// micro farads
R2=1/(2*%pi*Fl*C2*10^-6);
printf('  The value of resistor = %.1f k Ohms \n',R2/1000);

disp(" Since the pass band gain is 4, the gain of the high pass and low pass filter sections are set each equal to 2. Therefore, R1=Rf=10 k Ohmss for both section");
disp(" Further, the gain of the summing amplifier is set to 1, therefore R2=R3=R4=10 k Ohms"); // K ohms
R=10000;//Ohms(R=R2=R3=R4)
Rom=(1/R+1/R+1/R)^-1;
printf('  The value of Rom = %.1f k Ohms\n',Rom/1000);
// There is a printing mistake as c=0.1 micro fard is printed instead of 0.01 micro farad.
