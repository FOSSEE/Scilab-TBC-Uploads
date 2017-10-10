clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 1     :  DC Circuits 
// Chapter 1  :  Basic Concepts 
// Example 1 - 1

clear; clc; close; 
//
// Given data
C       =  4600;
Q       =  -1.6020 * 10^(-19);

//
// Calculations Charge Electron
Q_coulumb = Q * C;
// 
disp("Example 1-1 Solution : ");
printf(" \n Q_Coulumb = Charge Electron                     = %.10f nC",Q_coulumb*10^9)
