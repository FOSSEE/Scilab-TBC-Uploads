clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 9  :  Sinusoids and Phasors
// Example 9 - 1

clear; clc; close; 
//
// Given data
Vm       =   12.0000;
theta    =   10.0000;
w        =   50.0000;
//
// Calculations Perioda T
T = (2*%pi)/w;
// Calculations Frquency f
f = 1/T;
// 
disp("Example 9-1 Solution : ");
printf(" \n Vm     = Amplitude               = %.3f Volt",Vm)
printf(" \n theta  = Phase                   = %.3f degree",theta)
printf(" \n w      = Angular The frequency   = %.3f rad/s",w)
printf(" \n T      = Period                  = %.3f s",T)
printf(" \n f      = Frequency               = %.3f Hz",f)

