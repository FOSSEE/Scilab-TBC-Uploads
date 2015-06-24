// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 12 : CONSTRUCTION OF OVERHEAD LINES

// EXAMPLE : 12.4 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
T1 = 3000 ; // Bending moments in lb
T2 = 2500 ; // Bending moments in lb
h1 = 37.5 ; // Bending moments at heights in ft
h2 = 35.5 ; // Bending moments at heights in ft
h_g = 36.5 ; // Height at which Guy is attached to pole in ft
L = 15 ; // Lead of guy in ft

// CALCULATIONS
// For case (a)
T_h = ( T1*h1 + T2*h2 )/h_g ; // Horizontal component of tension in guy wire in lb . From equ 12.26

// For case (b)
bet = atand(h_g/L) ; // beta angle in degree . From equ 12.28

// For case (c)
T_v = T_h * tand(bet) ; // Vertical component of tension in guy wire in lb . From equ 12.34

// For case (d)
T_g = T_h/( cosd(bet )) ; // Tension in guy wire in lb . From equ 12.29
T_g1 = sqrt( T_h^2 + T_v^2 ) ; // Tension in guy wire in lb

// DISPLAY RESULTS
disp("EXAMPLE : 12.4 : SOLUTION :-") ;
printf("\n (a) Horizontal component of tension in guy wire , T_h = %.1f lb \n",T_h) ;
printf("\n (b) Angle β , β = %.2f degree \n",bet) ;
printf("\n (c) Vertical component of tension in guy wire , T_v = %.2f lb \n",T_v) ;
printf("\n (d) Tension in guy wire , T_g = %.1f lb \n",T_g) ;
printf("\n     (or)  From another equation , \n") ;
printf("\n     Tension in guy wire , T_g = %.1f lb \n",T_g1) ;
