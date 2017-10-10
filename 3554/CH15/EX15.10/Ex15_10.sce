// Exa 15.10

clc;
clear all;

// Given data
// Second order inverting Butterworth low pass filter
// Refering Table 15.1 and 15.3 in page no 517 and 538 respectively

Af=6;// DC gain
Fc=1.5;// KHz
Q=10;

// Solution

disp(" According to Table 15.1, the inverting configurations would normally be used to give an inverting low pass output. However, to obtain a gain of 6, an inverting uncommitted opamp has to br used, hence the non-inverting filter configuration must be used.");

// From table 15.4 given on page no 538
R2=316/Q;
R3=100/(3.16*Q-1);
// R1 treated as open circuit
printf(' \n The R1 is open while R2 and R3 are %.1f ,k Ohms %.1f k Ohms respectively \n',R2,R3);
// From equations 15.54 given on page no 538 we get R4 and R5
R4=(5.03)*10^7/(Fc*10^3);//Ohms
R5=R4;
printf(' \n The calculated value of R4=R5=%.2f k Ohms \n',R4/1000);
disp("  use R4=R5=33 k Ohms");

disp(" Let R6=1.8 K ohms");
R6=1.8; // K ohms
R7=R6*Af;
R8=(1/R6 + 1/R7)^-1;

printf(' The values of R6 and R7 are %.1f k Ohms, %.3f K ohms respectively \n',R6,R7);
printf(' The value of R8 = %.3f k Ohms \n ',R8);
