// Exa 15.8

clc;
clear all;

// Given data
// Active notch filter
 
Fn=50; //Notch out frequency(Hz)

// Solution

disp(" Let C=0.047 micro farads");
C=0.047; // micro farads
R=1/(2*%pi*Fn*C*10^-6);

printf('  The value of R is calculated as %d k Ohms \n',round(R/1000));
disp("For R/2, two 68 k Ohms resistors connected in parallel are used and for the 2C components, two 0.047 micro farad capacitors connected in parallel are used.");

