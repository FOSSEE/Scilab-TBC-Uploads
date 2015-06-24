// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.12 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
f= 60 ; // frequency in hertz
r_a = 0.19 ; // Conductor resistance in Ω/mi
l = 10 ; // length in mi
D_s = 0.262 ; // GMR of one conductor in inches
d = 18 ; // conductors spacing in inches

// CALCULATIONS
// For case (a)
X_a = %i * 0.1213 *log (12/D_s) ; // reactance of individual phase conductor at 12 inch spacing in Ω/mi
Z_aa = l * ( r_a + X_a ) ; // Z_aa = Z_bb = .... = Z_zz
Z_bb = Z_aa ;
Z_zz = Z_aa ;
Z_cc = Z_aa ;
D_eq1 = d * 2 ;
Z_ab = (l) * ( %i * 0.1213 * log(12/D_eq1) ) ;
Z_bc = Z_ab ;
Z_xy = Z_ab ; // Z_xy = Z_yx
Z_yz = Z_ab ;
Z_ba = Z_ab ;
Z_cb = Z_ab ;
D_eq2 = d * 3 ;
Z_bz = (l) * ( %i * 0.1213 * log(12/D_eq2) ) ;
Z_ay = Z_bz ; // Z_ya = Z_ay
Z_cx = Z_bz ; // Z_cx = Z_xc
Z_yz = Z_bz ; // Z_zy = Z_yz
D_eq3 = d * 4 ;
Z_ac = (l) * ( %i * 0.1213 * log(12/D_eq3) ) ;
Z_ca = Z_ac ; // Z_ac = Z_xz = Z_zx
D_eq4 = d * 1 ;
Z_ax = (l) * ( %i * 0.1213 * log(12/D_eq4) ) ;
Z_bx = Z_ax ; // Z_ax = Z_xa ; Z_bx = Z_xb
Z_by = Z_ax ; // Z_by = Z_yb
Z_cy = Z_ax ; // Z_cy = Z_yc
Z_cz = Z_ax ;
D_eq5 = d * 5 ;
Z_az = (l) * (%i*0.1213*log(12/D_eq5)) ; // Z_za= Z_az

Z_s = [Z_aa Z_ab Z_ac ; Z_ba Z_bb Z_bc ; Z_ca Z_cb Z_cc] ;
Z_tm = [Z_ax Z_bx Z_cx ; Z_ay Z_by Z_cy ; Z_az Z_bz Z_cz] ;
Z_M = [Z_ax Z_ay Z_az ; Z_bx Z_by Z_bz ; Z_cx Z_cy Z_cz] ;
Z_N = [Z_aa Z_xy Z_ac ; Z_xy Z_aa Z_ab ; Z_ac Z_ab Z_aa] ;
Z_new = (Z_s)-(Z_M)*(Z_N)^(-1)*(Z_tm) ;

// For case (b)
a = 1*exp(%i*120*%pi/180) ; // By symmetrical components theory to 3-Φ system
A = [1 1 1; 1 a^2 a ;1 a a^2] ;
Z_012 = inv(A) * Z_new * A ; // Sequence-impedance matrix

// DISPLAY RESULTS
disp("EXAMPLE : 5.12 : SOLUTION :-") ;
printf("\n (a) Phase Impedance Matrix , [Z_abc] = \n") ; disp(Z_new) ;
printf("\n (b) Sequence-Impedance Matrix , [Z_012] = \n") ; disp(Z_012) ;
