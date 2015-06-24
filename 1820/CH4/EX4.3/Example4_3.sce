// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 4 : OVERHEAD POWER TRANSMISSION

// EXAMPLE : 4.3 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Z_xy = 0.09 + %i*0.3 ; // Mutual impedance between two parallel feeders in Ω/mi per phase
Z_xx = 0.604*exp(%i*50.4*%pi/180) ; // Self impedance of feeders in Ω/mi per phase
Z_yy = 0.567*exp(%i*52.9*%pi/180) ; // Self impedance of feeders in Ω/mi per phase

// SOLUTION
Z_2 = Z_xx - Z_xy ; // mutual impedance between feeders
Z_4 = Z_yy - Z_xy ; // mutual impedance between feeders

// DISPLAY RESULTS
disp("EXAMPLE : 4.3 : SOLUTION :-") ;
printf("\n  Mutual impedance at node 2 , Z_2 = %.3f + j%.3f Ω\n",real(Z_2),imag(Z_2)) ;
printf("\n  Mutual impedance at node 4 , Z_4 = %.3f + j%.3f Ω\n",real(Z_4),imag(Z_4)) ;
