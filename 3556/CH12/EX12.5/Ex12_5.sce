clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 5

clear; clc; close; // Clear the work space and console.
//
// Given data
Vab_mag   = 210.0000;                              
Vab_angle =   0.0000;                                
ZY = complex(40,25);                                 
//
// Calculations Phase Voltage (Van)
Van_mag   = Vab_mag/(3)^0.5                          
Van_angle = -30.0000;                                
// Calculatioan Line Current a 
I_a_mag   = Van_mag/norm(ZY)                        
ZY_real = real(ZY)                                   
ZY_imag = imag(ZY)                                   
ZY_angle = atand(ZY_imag,ZY_real)                    
I_a_angle  = Van_angle - ZY_angle                   
// Calculations Line Current b 
I_b_mag = I_a_mag;                                   
I_b_angle = -120.0000 + I_a_angle;                   
// Calculations Line Current c 
I_c_mag = I_a_mag;                                   
I_c_angle = 120.0000 + I_a_angle;                     
// Calculations Phase Current AB
I_AB_mag = I_a_mag;                                  
I_AB_angle = I_a_angle;                              
// Calculations Phase Current BC
I_BC_mag = I_b_mag;                                 
I_BC_angle = I_b_angle;                              
// Calculations Phase Current CA 
I_CA_mag = I_c_mag;                                  
I_CA_angle = I_c_angle;                              
//
disp("Example 12-5 Solution : ");
printf(" \n I_AB_mag   = Magnitude of Phase Currents AB      = %.3f A",I_AB_mag)
printf(" \n I_AB_angle = Angle of Phase Current AB           = %.3f Degree",I_AB_angle)
printf(" \n I_BC_mag   = Magnitude of Phase Currents BC      = %.3f A",I_BC_mag)
printf(" \n I_BC_angle = Angle of Phase Current BC           = %.3f Degree",I_BC_angle)
printf(" \n I_CA_mag   = Magnitude of Phase Currents CA      = %.3f A",I_CA_mag)
printf(" \n I_CA_angle = Angle of Phase Current CA           = %.3f Degree",I_CA_angle)
printf(" \n I_a_mag    = Magnitude of Line Currents a        = %.3f A",I_a_mag)
printf(" \n I_a_angle  = Angle of Line Current a             = %.3f Degree",I_a_angle)
printf(" \n I_b_mag    = Magnitude of Line Current b         = %.3f A",I_b_mag)
printf(" \n I_b_angle  = Angle of Line Current b             = %.3f Degree",I_b_angle)
printf(" \n I_c_mag    = Magnitude of Line Currents c        = %.3f A",I_c_mag)
printf(" \n I_c_angle  = Angle of Line Current c             = %.3f Degree",I_c_angle)






