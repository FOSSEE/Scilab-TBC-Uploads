// Scilab Code Ex12.1 Page-603 (2011)
clc; clear;
H = 5e+3;....// Coercivity of a bar magnet, A/m
L = 0.1;....// Length of the solenoid, m
N = 50;....// Turns in solenoid
n = 500;....// Turns/m
// Using the relation
I = H/n;....// where I is the current through the solenoid
printf("\nThe current through the solenoid is = %2d A", I);

// Result
// The current through the solenoid is = 10 A
