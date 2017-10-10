// Exa 15.6

clc;
clear all;

//Given data
// Refering fig. 15.17- Narrow band pass filter

Fc=1; // kHz
Q=5; //Quality factor
Avo=8; //Voltage gain
Fc1=1.5;//New centre frequency(kHz)

// Solution

disp(" Let C1=C2=C3=C(say)=0.01 micro farads");
C=0.01;//micro farads
// But
R1=Q/(2*%pi*Fc*10^3*C*10^-6*Avo); // From eqn. 15.45 on page no.530
R2=Q/(2*%pi*Fc*10^3*C*10^-6*(2*Q^2-Avo));// From eqn. 15.47 on page no. 530
R3=Q/(%pi*Fc*10^3*C*10^-6); // From eqn. 15.46 on agr no. 530
printf(' The Values of R1, R2 and R3 are %.3f k Ohms(approx 10 k Ohms), %.3f k Ohms(approx 2 k Ohms and %.3f k Ohms(aprox 159 k Ohms) respectively\n',R1/1000,R2/1000,R3/1000); 
// To change Fc to Fc1 we simply have to change R2 to R21 given as 
R21=2000*(Fc/Fc1)^2;// since R2=2 k Ohms(approx)
printf('  The calculated value of new R2 to change Fc from 1 kHz to 1.5 kHz keeping Avo(Voltage gain) and BW constant is = %.2f ohms (approx 820 Ohms) \n',R21);

