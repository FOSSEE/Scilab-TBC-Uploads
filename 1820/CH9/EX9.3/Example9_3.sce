// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.3 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
l = 40 ; // line length in miles
// Conductor parameter from Table A.3
r_a = 0.206 ; // Ohms per conductor per mile in Ω/mi
r_b = r_a ; // r_a = r_b = r_c in Ω/mi
D_s = 0.0311 ; // GMR in ft where D_s = D_sa = D_sb = D_sc
D_ab = sqrt(2^2 + 8^2) ; // GMR in ft
D_bc = sqrt(3^2 + 13^2) ; // GMR in ft
D_ac = sqrt(5^2 + 11^2) ; // GMR in ft
D_e = 2788.5 ; // GMR in ft since earth resistivity is zero
r_e = 0.09528 ; // At 60 Hz in Ω/mi

// CALCULATIONS
// For case (a)
Z_aa =[(r_a + r_e) + %i * 0.1213*log(D_e/D_s)]*l ; // Self impedance of line conductor in Ω
Z_bb = Z_aa ;
Z_cc = Z_bb ;
Z_ab = [r_e + %i * 0.1213*log(D_e/D_ab)]*l ; // Mutual impedance in Ω
Z_ba = Z_ab ;
Z_bc = [r_e + %i * 0.1213*log(D_e/D_bc)]*l ;
Z_cb = Z_bc ;
Z_ac = [r_e + %i * 0.1213*log(D_e/D_ac)]*l ;
Z_ca = Z_ac ;
Z_abc = [Z_aa Z_ab Z_ac ; Z_ba Z_bb Z_bc ; Z_ca Z_cb Z_cc] ; // Line impedance matrix

// For case (b)
a = 1*exp(%i*120*%pi/180) ; // By symmetrical components theory to 3-Φ system
A = [1 1 1; 1 a^2 a ;1 a a^2] ;
Z_012 = inv(A) * Z_abc*A ; // Sequence impedance matrix

// DISPLAY RESULTS
disp("EXAMPLE : 9.3 : SOLUTION :-") ;
printf("\n (a) Line impedance matrix , [Z_abc] = \n") ; disp(Z_abc) ;
printf("\n (b) Sequence impedance matrix of line , [Z_012] = \n") ; disp(Z_012) ;
