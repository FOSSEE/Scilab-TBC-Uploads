// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 10 : PROTECTIVE EQUIPMENT AND TRANSMISSION SYSTEM PROTECTION

// EXAMPLE : 10.7 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Z_r1 = 0.0415692 + %i*0.4156922 ; // Required zone 1 setting . From result of exa 10.6
Z_r2 = 0.0623538 + %i*0.6235383 ; // Required zone 2 setting . From result of exa 10.6
Z_r3 = 0.1299038 + %i*1.2990381 ; // Required zone 3 setting . From result of exa 10.6

// CALCULATIONS 
// For case (a)
theta1 = atand(imag(Z_r1),real(Z_r1)) ;
Z_1 = abs(Z_r1)/cosd(theta1 - 30) ; // Zone 1 setting of mho relay R_12

// For case (b)
theta2 = atand(imag(Z_r2),real(Z_r2)) ;
Z_2 = abs(Z_r2)/cosd(theta2 - 30) ; // Zone 2 setting of mho relay R_12

// For case (b)
theta3 = atand(imag(Z_r3),real(Z_r3)) ;
Z_3 = abs(Z_r3)/cosd(theta3 - 30) ; // Zone 3 setting of mho relay R_12

// DISPLAY RESULTS
disp("EXAMPLE : 10.7 : SOLUTION :-") ;
printf("\n (a) Zone 1 setting of mho relay R_12 = %.4f Ω(secondary) \n",Z_1) ;
printf("\n (b) Zone 2 setting of mho relay R_12 = %.4f Ω(secondary) \n",Z_2) ;
printf("\n (c) Zone 3 setting of mho relay R_12 = %.4f Ω(secondary) \n",Z_3) ;
