// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.4 :
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
Z_s =[(r_a + r_e) + %i*0.1213*log(D_e/D_s)]*l ; // Self impedance of line conductor in Ω . From equ 9.49
D_eq = (D_ab * D_bc * D_ac)^(1/3) ; // Equ GMR
Z_m = [r_e + %i*0.1213*log(D_e/D_eq)]*l ; // From equ 9.50
Z_abc = [Z_s Z_m Z_m ; Z_m Z_s Z_m ; Z_m Z_m Z_s] ; // Line impedance matrix

// For case (b)
Z_012 = [(Z_s+2*Z_m) 0 0 ; 0 (Z_s-Z_m) 0 ; 0 0 (Z_s-Z_m)] ; // Sequence impedance matrix . From equ 9.54

// DISPLAY RESULTS
disp("EXAMPLE : 9.4 : SOLUTION :-") ;
printf("\n (a) Line impedance matrix when line is completely transposed , [Z_abc] = \n") ; disp(Z_abc) ;
printf("\n (b) Sequence impedance matrix when line is completely transposed , [Z_012] = \n") ; disp(Z_012) ;
