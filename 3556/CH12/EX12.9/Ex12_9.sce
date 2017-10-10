clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 9

clear; clc; close; 
//
// Given data
ZA        = complex(15,0);                          
ZB        = complex(10,5);                          
ZC        = complex(6,-8);                          
VL_mag    = 100.0000;                               
VL_angle  =   0.0000;                              
// 
// Calculations Voltage Line a 
V_a_mag   = 100.0000;                               
V_a_angle =   0.0000;                               
// Calculations Voltage Line b
V_b_mag   = V_a_mag;                               
V_b_angle = 120.0000;                               
// Calculations Voltage Line c
V_c_mag   = V_a_mag;                                
V_c_angle = -120.0000                               
// Calculations Line Current a 
I_a_mag   = V_a_mag/norm(ZA);                       
ZA_real   = real(ZA);                               
ZA_imag   = imag(ZA);                               
ZA_angle  = atand(ZA_imag,ZA_real)                 
I_a_angle = V_a_angle - ZA_angle;                    
// Calculations Line Current b 
I_b_mag   = V_b_mag/norm(ZB);                       
ZB_real   = real(ZB);                              
ZB_imag   = imag(ZB);                              
ZB_angle  = atand(ZB_imag,ZB_real)                 
I_b_angle = V_b_angle - ZB_angle;                   
// Calculations Line Current c
I_c_mag   = V_c_mag/norm(ZC);                       
ZC_real   = real(ZC);                               
ZC_imag   = imag(ZC);                               
ZC_angle  = atand(ZC_imag,ZC_real)                  
I_c_angle = V_c_angle - ZC_angle;                  
// Calculations Neutral Current 
I_a_real = I_a_mag * cosd(I_a_angle);              
I_a_imag = I_a_mag * sind(I_a_angle);               
I_b_real = I_b_mag * cosd(I_b_angle);               
I_b_imag = I_b_mag * sind(I_b_angle);               
I_c_real = I_c_mag * cosd(I_c_angle);               
I_c_imag = I_c_mag * sind(I_c_angle);                        
I_neutral_real = I_a_real + I_b_real + I_c_real;    
I_neutral_imag = I_a_imag + I_b_imag + I_c_imag;    
I_neutral_mag = norm(complex(I_neutral_real,I_neutral_imag)) 
I_neutral_angle = atand(I_neutral_imag,I_neutral_real)       
// 
disp("Example 12-9 Solution : ");
printf(" \n I_a_mag           = Magnitude of Line Currents a        = %.3f A",I_a_mag)
printf(" \n I_a_angle         = Angle of Line Current a             = %.3f Degree",I_a_angle)
printf(" \n I_b_mag           = Magnitude of Line Currents b        = %.3f A",I_b_mag)
printf(" \n I_b_angle         = Angle of Line Current b             = %.3f Degree",I_b_angle)
printf(" \n I_c_mag           = Magnitude of Line Currents c        = %.3f A",I_c_mag)
printf(" \n I_c_angle         = Angle of Line Current c             = %.3f Degree",I_c_angle)
printf(" \n I_neutral_mag     = Magnitude of Neutral Current        = %.3f A",I_neutral_mag)
printf(" \n I_neutral_angle   = Angle of Neutral Current            = %.3f Degree",(180.0000 + I_neutral_angle))




