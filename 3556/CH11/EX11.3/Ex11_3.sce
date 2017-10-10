clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 11 :  AC power Analysis 
// Example 11 - 3

clear; clc; close; 
//
// Given data
V_mag   =  5.0000;                       
V_angle = 30.0000;                       
R       =  4.0000;                       
Rc      =  2.0000;                       
V_s     = complex(5*cosd(30),5*sind(30))  
Z_s     = complex(4,-2)                  
//
// Calculations Total Current
I_s   = V_s/Z_s;                         
I_real = real(I_s);                      
I_imag = imag(I_s);                      
I_magnitude  = norm(I_s);                                 
I_angle      = atand(I_imag,I_real);     
// Calculations Average Power Absorbed by The Source 
P_avg  =  0.5000 * V_mag * I_magnitude * cosd(V_angle - I_angle); 
// Calculations Average Power Absorbed by The Resistor 
IR = I_magnitude;                    
VR = IR * R;                             
P_R = 0.5*VR*IR;                        
//
disp("Example 11-3 Solution : ");
printf(" \n P_avg  = Average Power Absorbed by Source         = %.3f Watt",P_avg)
printf(" \n P_R    = Average Power Absorbed by Resistor       = %.3f Watt",P_R)






