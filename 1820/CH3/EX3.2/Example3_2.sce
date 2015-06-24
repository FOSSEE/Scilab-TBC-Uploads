// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 3 : FUNDAMENTAL CONCEPTS

// EXAMPLE : 3.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
SIL = 325 ; // Surge impedance Loading in MW . From exa 3.1
kV = 345 ; // Transmission line voltage in kV . From exa 3.1

// For case (a)
t_shunt1 = 0.5 ; // shunt capacitive compensation is 50%
t_series1 = 0 ; // no series compensation

// For case (b)
t_shunt2 = 0.5 ; // shunt compensation using shunt reactors is 50%
t_series2 = 0 ; // no series capacitive compensation

// For case (c)
t_shunt3 = 0 ; // no shunt compensation
t_series3 = 0.5 ; // series capacitive compensation is 50%

// For case (d)
t_shunt4 = 0.2 ; // shunt capacitive compensation is 20%
t_series4 = 0.5; // series capacitive compensation is 50%

// CALCULATIONS
// For case (a)
SIL1 = SIL*(sqrt( (1-t_shunt1)/(1-t_series1) )) ; // Effective SIL in MW

// For case (b)
SIL2 = SIL*(sqrt( (1+t_shunt2)/(1-t_series2) )) ; // Effective SIL in MW

// For case (c)
SIL3 = SIL*(sqrt( (1-t_shunt3)/(1-t_series3) )) ; // Effective SIL in MW

// For case (d)
SIL4 = SIL*(sqrt( (1-t_shunt4)/(1-t_series4) )) ; // Effective SIL in MW

// DISPLAY RESULTS
disp("EXAMPLE : 3.2 : SOLUTION :-") ;
printf("\n (a) Effective SIL , SIL_comp = %.f MW \n",SIL1) ;
printf("\n (b) Effective SIL , SIL_comp = %.f MW \n",SIL2) ;
printf("\n (c) Effective SIL , SIL_comp = %.f MW \n",SIL3) ;
printf("\n (d) Effective SIL , SIL_comp = %.f MW \n",SIL4) ;

printf("\n NOTE: Unit of SIL is MW and surge impedance is Ω ") ;
printf("\n ERROR: Mistake in unit of SIL in textbook \n") ;
