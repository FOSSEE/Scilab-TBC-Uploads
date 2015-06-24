// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.10 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
f= 60 ; // frequency in hertz
t = 245 ; // insulation thickness in mils
t_s = 95 ; // Lead/metal sheath thickness in mils
d = 0.575 ; // diameter of conductor in inches
r_s = 1.72 ; // sheath resistance in Ω/mi
r_a = 0.263 ; // Conductor resistance in Ω/mi
r = 100 ; // earth resistivity in Ω-mi
D_s = 0.221 ; // GMR of one conductor in inches
D_ab = 24 ; // distance b/w conductor a & b in inch . refer fig 5.30
D_bc = 24 ; // distance b/w conductor b & c in inch . refer fig 5.30
D_ca = 48 ; // distance b/w conductor c & a in inch . refer fig 5.30

// CALCULATIONS
T = t/1000 ; // insulation thickness in inch . [1 mils = 0.001 inch]
T_s = t_s/1000 ; // Lead/metal sheath thickness in mils
r_i = (d/2) + T ; // Inner radius of metal sheath in inches
r_0 = r_i + T_s ; // Outer radius of metal sheath in inches
r_e = 0.00476 * f ; //  AC resistance of earth return in Ω/mi
D_e = 25920 * sqrt(r/f) ; // Equivalent depth of earth return path in inches
D_eq = (D_ab*D_bc*D_ca)^(1/3) ; // Mean distance among conductor centers in inches
Z_0a = (r_a + r_e) + (%i) * (0.36396) * log(D_e/((D_s*D_eq^2)^(1/3))) ;
D_s_3s = (D_eq^2 * (r_0+r_i)/2)^(1/3) ; // GMR of conducting path composed of 3 sheaths in parallel in inches
Z_0s = (r_s + r_e) + (%i) * 0.36396 * log (D_e/D_s_3s) ; // Zero sequence impedance of sheath in inches
D_m_3c_3s = D_s_3s ; // Zero sequence mutual impedance b/w conductors & sheaths in inches
Z_0m = r_e + (%i)*(0.36396)*log(D_e/D_m_3c_3s) ;

// For case (a)
Z_00 = Z_0a - (Z_0m^2/Z_0s) ; // Total zero sequence impedance when ground and return paths are present in Ω/mi/phase

// For case (b)
Z_0 = Z_0a + Z_0s - 2*Z_0m ; // Total zero sequence impedance when there is only sheath return path in Ω/mi/phase

// For case (c)
Z_01 = Z_0a ; // Total zero sequence impedance when there is only ground return path in Ω/mi/phase

// DISPLAY RESULTS
disp("EXAMPLE : 5.10 : SOLUTION :-") ;
printf("\n (a) Total zero sequence impedance when both ground & return paths are present , Z_00 = %.3f<%.1f Ω/mi/phase \n",abs(Z_00),atand(imag(Z_00),real(Z_00))) ;
printf("\n (b) Total zero sequence impedance when there is only sheath return path , Z_0 = %.3f<%.1f Ω/mi/phase \n",abs(Z_0),atand(imag(Z_0),real(Z_0))) ;
printf("\n (c) Total zero sequence impedance when there is only ground return path , Z_0a = %.4f<%.1f Ω/mi/phase \n",abs(Z_01),atand(imag(Z_01),real(Z_01))) ; 

printf("\n NOTE : ERROR : There are mistakes in units in the Textbook \n") ;
