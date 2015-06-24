// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 13 : SAG AND TENSION ANALYSIS

// EXAMPLE : 13.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
c = 1600 ; // Length of conductor in feet
L = 500 ; // span b/w conductors in ft
w1 = 4122 ; // Weight of conductor in lb/mi

// CALCULATIONS
// For case (a)
l = 2 * c *( sinh(L/(2*c)) ) ; // Length of conductor in ft using eq 13.6
l_1 = L * (1 + (L^2)/(24*c^2) ) ; // Length of conductor in ft using eq 13.8

// For case (b)
d = c*( cosh( L/(2*c) ) - 1 ) ; // sag in ft

// For case (c)
w = w1/5280 ; // Weight of conductor in lb/ft . [1 mile = 5280 feet]
T_max = w * (c + d) ; // Max conductor tension in lb
T_min = w * c ; // Min conductor tension in lb

// For case (d)
T = w * (L^2)/(8*d) ; // Appr value of tension in lb using parabolic method

// DISPLAY RESULTS
disp("EXAMPLE : 13.1 : SOLUTION :-") ;
printf("\n (a) Length of conductor using eq 13.6 , l = %.3f ft \n",l) ;
printf("\n  &  Length of conductor using eq 13.8 , l = %.4f ft \n",l_1) ;
printf("\n (b) Sag , d = %.1f ft \n",d) ;
printf("\n (c) Maximum value of conductor tension using catenary method , T_max = %.1f lb \n",T_max) ;
printf("\n     Minimum value of conductor tension using catenary method , T_min = %.1f lb \n",T_min) ;
printf("\n (d) Approximate value of tension using parabolic method , T = %.2f lb \n",T) ;
