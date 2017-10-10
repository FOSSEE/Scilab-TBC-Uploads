// Exa 15.11

clc;
clear all;

// Given data

Fc=4;// kHz
Q=8;

// Solution

disp(" The FLT-U2 can be used as a notch filter by summing the inverted output of the bandpass filter designed with the input signal by means of the uncommitted opamp.");

// From table 15.3 given on page no 538
R2=100;// k Ohms
R3=100/((3.40*Q)-1);
// R1 treated as open circuit
printf(' The R1 is open while R2 and R3 are %.1f , %.2f K ohms respectively \n',R2,R3);

// From equations 15.54 given on page no 538 we get R4 and R5
R4=(5.03)*10^7/(Fc*10^3);
R5=R4;
printf(' The calculated value of R4=R5=%.2f k Ohms(12 k Ohms) \n',R4/1000);
disp(" Let R6=R7=R8=10 K ohms ");
R=10000;//R=R6=R7=R8=10 k Ohms
R9=(1/R+1/R+1/R)^-1;
printf(' The value of R9 =%.2f K ohms \n',R9/1000);
disp(" The complete circuit diagram is shown in fig. 15.26 on page no. 541.");
// The value of R3 vary due to round off error.
