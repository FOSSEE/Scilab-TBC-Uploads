clc
// Fundamental of Electric Circuit 
// Charles K. Alexander and  Matthew N.O Sadiku  
// Mc Graw Hill of New York 
// 5th Edition 

// Part 2     :  AC Circuits 
// Chapter 9  :  Sinusoids and Phasors
// Example 9 - 3

clear; clc; close; 
//
// Given data
Z1 =  complex(40*cosd(50.0000),40*sind(50.0000));
Z2 =  complex(20*cosd(-30.0000),20*sind(-30.0000));
Z3 =  complex(10*cosd(-30.0000),10*sind(-30.0000));
Z4 =  complex(3.0000,-4.0000);
Z5 =  complex(2.0000,4.0000);
Z6 =  conj(complex(3.0000,-5.0000));
//
// Calculations Part a
Ztot_a = Z1 + Z2;
Ztot_a_mag = norm(Ztot_a);
Ztot_a_angle = atand(imag(Ztot_a),real(Ztot_a))
Ztot_mag_a = sqrt(Ztot_a_mag);
Ztot_angle_a = 0.500 * Ztot_a_angle;
// Calculations Part b 
Ztot_b = (Z3 + Z4)/(Z5*Z6);
Ztot_mag_b = norm(Ztot_b);
Ztot_angle_b = atand(imag(Ztot_b),real(Ztot_b));
//
disp("Example 9-3 Solution : ");
disp("a. Part a : ");
printf(" \n Ztot_mag_a   = Magnitude of Ztot a        = %.3f ",Ztot_mag_a)
printf(" \n Ztot_angle_a = Angle of Ztot a            = %.3f degree",Ztot_angle_a)
disp("")
disp("b. Part b : ");
printf(" \n Ztot_mag_b   = Magnitude of Ztot b        = %.3f ",Ztot_mag_b)
printf(" \n Ztot_angle_b = Angle of Ztot b            = %.3f degree",Ztot_angle_b)

