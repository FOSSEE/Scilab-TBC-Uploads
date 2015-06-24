// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 12 : CONSTRUCTION OF OVERHEAD LINES

// EXAMPLE : 12.2 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
V = 40 ; // Actual wind velocity in mi/hr
c_pg = 40 ; // Circumference at ground level in inches
c_pt = 28 ; // Circumference at pole top in inches
l = 35 ; // height of pole in feet
l_g = 6 ; // Height of pole set in ground in feet
d_c = 0.81 ; // dia. of copper conductor in inches
span_avg = 120 ; // Average span in ft
no_c = 8 ; // NO. of conductors

// CALCULATIONS
// For case (a)
p = 0.00256 * (V^2) ; // Buck's Formula to find wind pressure on cylindrical surface in lb/ft^2 
d_pg = c_pg/(%pi) ; // dia. of pole at ground line in inches
d_pt = c_pt/(%pi) ; // dia. of pole at pole top in inches
h_ag = ( l - l_g ) * 12 ; // Height of pole above ground in inch
S_pni = (1/2) * (d_pg + d_pt) * h_ag ; // projected area of pole in square inch
S_pni_ft = S_pni * 0.0069444 ; // projected area of pole in square ft
P = S_pni_ft * p ; // Total pressure of wind on pole in lb

// For case (b)
S_ni = d_c * span_avg * 12 ; // Projected area of conductor in square inch . [1 feet = 12 inch]
S_ni_ft = S_ni * 0.0069444 ; // Projected area of conductor in square ft . [1 sq inch = (0.0833333)^2 sq feet ≅ 0.069444 sq feet]
P_C = S_ni_ft * p * no_c ; // Total pressure of wind on conductor in lb

// DISPLAY RESULTS
disp("EXAMPLE : 12.2 : SOLUTION :-");
printf("\n (a) Total pressure of wind on pole , P = %.2f lb \n",P);
printf("\n (b) Total pressure of wind on conductors , P = %.2f lb \n",P_C);
