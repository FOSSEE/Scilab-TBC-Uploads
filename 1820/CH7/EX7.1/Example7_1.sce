// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 7 : TRANSIENT OVERVOLTAGES AND INSULATION COORDINATION

// EXAMPLE : 7.1 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V = 1000 ; // surge voltage in kV
Z_c = 500 ; // surge impedance in Ω

// CALCULATIONS
// For case (a)
P = V^2/Z_c ; // Total surge power in MW

// For case (b)
V1 = V*10^3 ; // surge voltage in V
i = V1/Z_c ;// surge current in A

// DISPLAY RESULTS
disp("EXAMPLE : 7.1 : SOLUTION :-") ;
printf("\n (a) Total surge power in line , P = %d MW \n",P) ;
printf("\n (b) Surge current in line , i = %d A \n",i) ;
