// Exa 7.2

clc;
clear;

// Given

l = 50; // length of potentiometer in mm
R = 5000; // Total resistance of potentiometer in Ohms
Rt = 1850; // Resistance of potentiometer in Ohms

// Solution

R_length = R/l ; // Resistance per unit length
R_normal = R/(l*10^-3*0.5);
printf(' Resistance of normal position = %d Ohms \n',R_normal);
R_change = R_normal - Rt;
printf('  Change in resistance = %d Ohms \n',R_change);
Displacement = R_change/R_length ;
printf('  The linear displacement when the resistance of the potentiometer is 1850 ohms = %.2f mm \n',Displacement);

// The answer provided in the textbook is wrong
