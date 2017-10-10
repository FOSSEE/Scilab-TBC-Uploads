clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 8

clear; clc; close; 
//
// Given data
R       =   8000.0000;                                                     
L       =   0.00020;                   
C       =   8 * 10^(-6);
Vm      =  10.0000;
//
// Calculations Resonant Frequency 
Wo = 1/sqrt(L*C) 
// Calculations Quality Factor  and Bandwidth
Q  = R/(Wo*L);
B  = Wo/Q;
// Calculations The Lower Half Power Frequency and The Upper Power Frequency 
W1 = Wo - (B/2);
W2 = Wo + (B/2);
// Calculations Power Dissipated at Wo, W1 and W2 
P_wo = Vm^2/(2*R);
P_w1 = Vm^2/(4*R)
P_w2 = P_w1;
     
// 
disp("a. The Resonant Frequency, Bandwidth and Quality Factor: ");
printf(" \n Wo         = Resonant Frequency                        = %.3f krad/s",Wo/1000)
printf(" \n B          = Bandwidth                                 = %.3f rad/s",B)
printf(" \n Q          = Imaginary Part of Power Complex           = %.3f ",Q)
disp("")
disp("b. The Resonant Frequency, The Lower dan Upper Power Frequency: ");
printf(" \n W1         = The Lower Half Power Frequency            = %.3f krad/s",W1/1000)
printf(" \n W2         = The Upper Half Power Frequency            = %.3f krad/s",W2/1000)
disp("")
disp("c. Power Dissipated at Wo, W1 and W2");
printf(" \n P_wo       = Power Dissipated at Wo                    = %.3f mW",P_wo*1000)
printf(" \n P_w1       = Power Dissipated at W1                    = %.3f mW",P_w1*1000)
printf(" \n P_w2       = Power Dissipated at W2                    = %.3f mW",P_w2*1000)

