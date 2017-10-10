clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 12 :  Three Phase Circuit 
// Example 12 - 3

clear; clc; close; 
//
// Given data
Van_mag   = 100.0000;                                
Van_angle =  10.0000;                                
Zdelta = complex(8,4);                               
//
// Calculations Line Voltage (Vab)
Vab_mag   = (3)^0.5 * Van_mag                        
Vab_angle =  Van_angle + 30.0000;                    
// Calculatioan Phase Current AB 
I_AB_mag   = Vab_mag/norm(Zdelta)                   
Zdelta_real = real(Zdelta)                           
Zdelta_imag = imag(Zdelta)                           
Zdelta_angle = atand(Zdelta_imag,Zdelta_real)        
I_AB_angle  = Vab_angle - Zdelta_angle               
// Calculations Phase Current BC
I_BC_mag = I_AB_mag;                                 
I_BC_angle = -120.0000 + I_AB_angle;                 
// Calculations Phase Current CA 
I_CA_mag = I_AB_mag;                                 
I_CA_angle = 120.0000 + I_AB_angle;                  
// Calculations Line Current a 
I_a_mag = (3)^0.5 * I_AB_mag;                        
I_a_angle = -30.0000 + I_AB_angle;                   
// Calculations Line Current b 
I_b_mag = I_a_mag;                                   
I_b_angle = -120.0000 + I_a_angle;                   
// Calculations Line Current c 
I_c_mag = I_a_mag;                                   
I_c_angle = 120.0000 + I_a_angle;                   
//
disp("Example 12-3 Solution : ");
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






