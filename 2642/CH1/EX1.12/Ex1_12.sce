// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 1 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 1.12

clc;clear; // clears the console and command history 


// Given data
P = 120        // total power in kW
cos_teta = 0.6 // power factor 

// caclulations 
teta = acosd(0.6)           // power factor angle
P_1 = tand(teta)*P/sqrt(3)
P_2 = (P_1+P)/2           // second wattmeter reading in kW

// display the result 
disp("Example 1.12 solution");
printf(" \n Second wattmeter reading \n P_2= %.1f kW \n", P_2);

