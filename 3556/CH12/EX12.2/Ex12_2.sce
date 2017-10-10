clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 2

clear; clc; close; 
//
// Given data
V_mag = 110.0000;                                
V_angle = 0.0000;                               
Zy1 = complex(5,-2);                               
Zy2 = complex(10,8);                             
//
// Calculations Current Line A (Ia)
Zy = Zy1 + Zy2;                                 
Zy_real = real(Zy);                             
Zy_imag = imag(Zy);                              
Zy_mag = norm(Zy);                               
Zy_angle = atand(Zy_imag,Zy_real);               
I_a_mag = V_mag/Zy_mag;                          
I_a_angle = V_angle - Zy_angle;                   
// Calculations Current Line B (Ib)
I_b_mag = I_a_mag;                                 
I_b_angle = -120.0000 + I_a_angle;                 
// Calculations Current Line C (Ic)
I_c_mag = I_a_mag;                                 
I_c_angle = -240.0000 + I_a_angle;                 
//
disp("Example 12-3 Solution : ");
printf(" \n Ia_mag   = Magnitude of Line Current a                = %.3f A",I_a_mag)
printf(" \n Ia_angle = Angle of Line Current a                    = %.3f Degree",I_a_angle)
printf(" \n Ib_mag   = Magnitude of Line Current b                = %.3f A",I_b_mag)
printf(" \n Ib_angle = Angle of Line Current b                    = %.3f Degree",I_b_angle)
printf(" \n Ic_mag   = Magnitude of Line Current c                = %.3f A",I_c_mag)
printf(" \n Ic_angle = Angle of Line Current c                    = %.3f Degree",I_c_angle)


