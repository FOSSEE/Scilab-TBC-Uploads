clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 14

clear; clc; close; 
//
// Given data
L1  = 1.8480;
L2  = 0.7650;
C1  = 0.7650;
C2  = 1.8480;
R   = 1.0000; 
R1  = 10.0000 * 10^3;
f_cutoff = 50.0000 * 10^3;
wc  = 1.0000;
wc1 = 2*%pi*f_cutoff;
//
// Calculations Frequency Scale Factor  
Kf = wc1/wc 
// Calculations Magnitude Scale Factor 
Km = R1/R
// Calculation L11 and L21 
L11 = (Km/Kf)*L1;
L21 = (Km/Kf)*L2;
// Calculation C11 and C21
C11 =  C1/(Km*Kf);
C21 =  C2/(Km*Kf); 
// 
disp("Example 14-14 Solution : ");
printf(" \n L11 = Inductance of Induktor 1                               = %.3f miliHenry",L11*10^3)
printf(" \n L21 = Inductance of Induktor 2                               = %.3f miliHenry",L21*10^3)
printf(" \n C11 = Capacitance of Capacitor 1                             = %.3f pikoFarad",C11*10^12)
printf(" \n C21 = Capacitance of Capacitor 2                             = %.3f pikoFarad",C21*10^12)


