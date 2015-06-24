// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 10 : PROTECTIVE EQUIPMENT AND TRANSMISSION SYSTEM PROTECTION

// EXAMPLE : 10.6 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
kv = 230 * 10^3 ; // transmission system voltage in V
VA = 100 * 10^6 ; // Maximum peak load supplied by TL_12 in VA
ZTL_12 = 2 + %i * 20 ; // Positive-sequence impedances of line TL_12
ZTL_23 = 2.5 + %i * 25 ; // Positive-sequence impedances of line TL_23
pf = 0.9 ; // Lagging pf

// CALCULATIONS 
// For case (a)
I_max = VA/(sqrt(3)*kv) ; // Maximum load current in A

// For case (b)
CT = 250/5 ; // CT ratio which gives about 5A in secondary winding under the maximum loading

// For case (c)
vr = 69 ; // selecting Secondary voltage of 69 V line to neutral
VT = (kv/sqrt(3))/vr ; // Voltage ratio

// For case (d)
Z_r = CT/VT ; // impedance measured by relay . Z_r = (V/VT)/(I/CT)
Z_TL_12 = Z_r * ZTL_12 ; // Impedance of lines TL_12 as seen by relay
Z_TL_23 = Z_r * ZTL_23 ; // Impedance of lines TL_23 as seen by relay

// For case (e)
Z_load = vr * CT * (pf + %i*sind(acosd(pf)))/(I_max) ; // Load impedance based on secondary ohms

// For case (f)
Z_r1 = 0.80 * Z_TL_12 ; // Zone 1 setting of relay R_12

// For case (g)
Z_r2 = 1.20 * Z_TL_12 ; // Zone 2 setting of relay R_12

// For case (h)
Z_r3 = Z_TL_12 + 1.20*(Z_TL_23) ; // Zone 3 setting of relay R_12

// DISPLAY RESULTS
disp("EXAMPLE : 10.6 : SOLUTION :-") ;
printf("\n (a) Maximum load current , I_max = %.2f A \n",I_max) ;
printf("\n (b) CT ratio , CT = %.1f \n",CT) ;
printf("\n (c) VT ratio , VT = %.1f \n",VT) ;
printf("\n (d) Impedance measured by relay  = %.3f Z_line \n",Z_r) ;
printf("\n (e) Load impedance based on secondary ohms , Z_load = Ω(secondary) \n") ; disp(Z_load) ;
printf("\n (f) Zone 1 setting of relay R_12 , Z_r = Ω(secondary) \n") ; disp(Z_r1) ;
printf("\n (g) Zone 2 setting of relay R_12 , Z_r = Ω(secondary) \n") ; disp(Z_r2) ;
printf("\n (h) Zone 3 setting of relay R_12 , Z_r = Ω(secondary) \n") ; disp(Z_r3) ;
