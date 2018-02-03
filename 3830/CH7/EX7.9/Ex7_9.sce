// Exa 7.9

clc;
clear;

// Given

// A platinum resitance thermometer
R1 = 120; // resistance in ohms at 25 °c
T1 = 25; // temperature in °c
T2 = 75; // temperature in °c
Alpha_T = 0.00392; // temperature coefficient of resistance at 25°c
R3 = 180; // resistance in ohms at unknown temp T3

// Solution

R2 = R1*(1+Alpha_T*(T2-T1)); // resistance at 75 °c
printf(' The resistance at 75 °c = %.2f ohms \n',R2);

// now, to get T3 corresponding to R3= 180 ohms

// R3 = R2*(1+Alpha_T*(T3-T1));
// Rearranging above equation to get T3 as 
T3 = (R3/R1 -1)/Alpha_T + T1;

printf(' The temperature corresponding to resistance 180 ohms = %.2f °c \n',T3);
