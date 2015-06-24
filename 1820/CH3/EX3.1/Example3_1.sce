// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 3 : FUNDAMENTAL CONCEPTS

// EXAMPLE : 3.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
kV = 345 ; // Three phase transmission line voltage in kV
Z_s = 366 ; // Surge impedance of line in Ω
a = 24.6 ; // Spacing between adjacent conductors in feet
d = 1.76 ; // Diameter of conductor in inches

// CALCULATIONS
SIL = (kV)^2/Z_s ; // Surge Impedance loading of line in MW

// DISPLAY RESULTS
disp("EXAMPLE : 3.1 : SOLUTION :-") ;
printf("\n Surge Impedance Loading of line , SIL = %.f MW \n",SIL) ;

printf("\n NOTE: Unit of SIL is MW and surge impedance is Ω") ;
printf("\n ERROR: Mistake in unit of SIL in textbook \n") ;
