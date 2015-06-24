// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 5 : REVIEW OF ELECRTIC CIRCUITS  
// Example : 5.1 

clc;clear; // clears the console and command history 

// Given data 
l = 10 // conductor length in m
B = 0.56 // magnetic flux density in T
I = 2 // current through conductor in A

// caclulations 
F = B*I*l // magnitude of force in N

// display the result 
disp("Example 5.1 solution");
printf(" \n Magnitude of force \n F = %.1f N ", F); 
