// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 13 : SAG AND TENSION ANALYSIS

// EXAMPLE : 13.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
L = 500 ; // span b/w conductors in ft
p = 4 ; // Horizontal wind pressure in lb/sq ft
t_i = 0.50 ; // Radial thickness of ice in inches
d_c = 1.093 ; // outside diameter of ACSR conductor in inches
w1 = 5399 ; // weight of conductor in lb/mi
s = 28500 ; // ultimate strength in lb

// CALCULATIONS
// For case (a)
w_i = 1.25 * t_i * (d_c + t_i) ; // Weight of ice in pounds per feet

// For case (b)
w = w1/5280 ; // weight of conductor in lb/ft . [1 mile = 5280 feet]
W_T = w + w_i ; // Total vertical load on conductor in pounds per feet

// For case (c)
P = ( (d_c + 2*t_i)/(12) )*p ; // Horizontal wind force in lb/ft

// For case (d)
w_e = sqrt( P^2 + (w + w_i)^2 ) ; // Effective load on conductor in lb/ft

// For case (e)
T = s/2 ;
d = w_e * L^2/(8*T) ; // sag in feet

// For case (f)
d_v = d * W_T/w_e ; // vertical sag in feet

// DISPLAY RESULTS
disp("EXAMPLE :13.2 : SOLUTION :-") ;
printf("\n (a) Weight of ice in pounds per feet , w_i = %.4f lb/ft \n",w_i) ;
printf("\n (b) Total vertical load on conductor in pounds per feet , W_T = %.4f lb/ft \n",W_T) ;
printf("\n (c) Horizontal wind force in pounds per feet , P = %.4f lb/ft \n",P) ;
printf("\n (d) Effective load acting in pounds per feet , w_e = %.4f lb/ft \n",w_e) ;
printf("\n (e) Sag in feet , d = %.2f ft \n",d) ;
printf("\n (f) Vertical Sag in feet  = %.2f ft \n",d_v) ;
