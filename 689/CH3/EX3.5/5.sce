clc; funcprot(0);
//Example 3.5 Speed of sound

// Initialisation of variables
gma = 1.4;
P = 2116.2;
rho = 0.002378;

// Calculations
a = sqrt(gma*P/rho);
//Results 
disp(a , "Speed of sound in standard pressure 2116.2 lbper sq ft, and standard density 0.002378slug per cu ft. (in ft/sec):");

