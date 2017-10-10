clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 14 :  Frequency Response
// Example 14 - 7

clear; clc; close; 
//
// Given data
R       =   2.0000;                                                     
L       =   0.0010;                   
C       =   0.4 * 10^(-6);
Vm      =  20.0000;
//
// Calculations Resonant Frequency 
Wo = 1/sqrt(L*C) 
// Calculations The Lower Half Power Frequency and The Upper Power Frequency 
W1_a = R/(2*L);
W1_b = 1/(L*C);
W1 = -W1_a + sqrt((W1_a)^2+(W1_b))
W2 =  W1_a + sqrt((W1_a)^2+(W1_b))
// Calculations Bandwidth and Quality Factor 
B  = W2 - W1;
Q  = Wo/B;
// Calculations Amplitude of The Current at Wo, W1 and W2 
I_wo = Vm/R;
I_w1 = Vm/(sqrt(2)*R);
I_w2 = I_w1;
// 
disp("Example 14-7 Solution : ");
disp("a. The Resonant Frequency, The Lower dan Upper Power Frequency: ");
printf(" \n Wo         = Resonant Frequency                        = %.3f krad/s",Wo/1000)
printf(" \n W1         = The Lower Half Power Frequency            = %.3f krad/s",W1/1000)
printf(" \n W2         = The Upper Half Power Frequency            = %.3f krad/s",W2/1000)
disp("")
disp("b. Bandwidth and Quality Factor");
printf(" \n B          = Bandwidth                                 = %.3f krad/s",B/1000)
printf(" \n Q          = Imaginary Part of Power Complex           = %.3f ",Q)
disp("")
disp("c. Amplitude of The Current at Wo, W1 and W2");
printf(" \n I_wo       = Amplitude of The Current at Wo            = %.3f A",I_wo)
printf(" \n I_w1       = Amplitude of The Current at W1            = %.3f A",I_w1)
printf(" \n I_w2       = Amplitude of The Current at W2            = %.3f A",I_w2)

