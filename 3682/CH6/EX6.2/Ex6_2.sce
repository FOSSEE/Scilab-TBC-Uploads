// Exa 6.2

clc;
clear;

// Given data

/// Referring Fig. 6.5- Adjustable regulator
Vo= 7.5; // Volts

// Solution

printf(' From the data sheeet of 7805, IQ=4.2 mA. Say, we choose IR1 = 25 mA.\n ');
IQ = 0.0042; // Amperes
IR1 = 0.025; //Amperes
printf(' The voltage across load for 7805 is 5 Volts.\n ');
VR=5; // Volts
R1 = VR/IR1;
printf(' Thus, calculated value of R1 = %d Ω. \n ',R1);

printf(' We have to choose R2 as to develop a voltage of 2.5 V across it. So, R2 comes out to be,\n ');
R2= 2.5/(IR1+IQ);
printf(' The value of R2 = %d Ω. \n ',int(R2));
