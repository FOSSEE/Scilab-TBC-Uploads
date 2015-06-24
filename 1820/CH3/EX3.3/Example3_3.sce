// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 3 : FUNDAMENTAL CONCEPTS

// EXAMPLE : 3.3 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
// For case (c)
I_normal = 1000 ; // Normal full load current in Ampere

// CALCULATIONS
// For case (a) equation is (1.5pu)*I_rated = (2 pu)*I_normal
// THEREFORE
// I_rated = (1.333pu)*I_normal ; // Rated current in terms of per unit value of the normal load current

// For case (b) 
Mvar = (1.333)^2 ; // Increase in Mvar rating in per units

// For case (c)
I_rated = (1.333)*I_normal ; // Rated current value

// DISPLAY RESULTS
disp("EXAMPLE : 3.3 : SOLUTION :-") ;
printf("\n (a) Rated current , I_rated = (1.333 pu)*I_normal \n") ;
printf("\n (b) Mvar rating increase = %.2f pu \n",Mvar) ;
printf("\n (c) Rated current value , I_rated = %.f A \n",I_rated) ;
