// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.9 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
kv = 230 ; // Line voltage in kV
Z_0 = 0.56 * %i ; // impedance in Ω
Z_1 = 0.2618 * %i ; // Impedance in Ω
Z_2 = 0.3619 * %i ; // Impedance in Ω
z_f = 5 + 0*%i ; // fault impedance in Ω
v = 1 * exp(%i*0*%pi/180) ;

// CALCULATIONS
// For case (a)
Z_B = kv^2/200 ; // Imedance base on 230 kV line
Z_f = z_f/Z_B ; // fault impedance in pu Ω
I_a0 = v/(Z_0 + Z_1 + Z_2 + 3*Z_f) ; // Sequence currents in pu A
I_a1 = I_a0 ;
I_a2 = I_a0 ;
a = 1 * exp(%i*120*%pi/180) ; // By symmetrical components theory to 3-Φ system
A = [1 1 1; 1 a^2 a ;1 a a^2] ;
I_f = A * [I_a0 ; I_a1 ; I_a2] ; // Phase currents in pu A

// For case (b)
V_a = [0 ; v ; 0] - [Z_0 0 0 ; 0 Z_1 0 ; 0 0 Z_2]*[I_a0 ; I_a1 ; I_a2] ; // Sequence voltage in pu V
V_f = A*V_a ; // Phase voltage in pu V

// For case (c)
V_abf = V_f(1,1) - V_f(2,1) ; // Line-to-line voltages at fault points in pu V
V_bcf = V_f(2,1) - V_f(3,1) ; // Line-to-line voltages at fault points in pu V
V_caf = V_f(3,1) - V_f(1,1) ; // Line-to-line voltages at fault points in pu V

// DISPLAY RESULTS
disp("EXAMPLE : 9.9 : SOLUTION :-") ;
printf("\n (b) Sequence currents , I_a0 = I_a1 = I_a2 = %.4f<%.1f pu A \n",abs(I_a0),atand(imag(I_a0),real(I_a0) )) ;
printf("\n  Phase currents in pu A , [I_af ; I_bf ; I_cf] = pu A \n") ;
printf("\n    %.4f<%.1f ",abs(I_f),atand(imag(I_f),real(I_f) )) ;
printf("\n \n (c) Sequence voltages are , [V_a0 ; V_a1 ; V_a2 ] = pu V \n") ;
printf("\n    %.4f<%.1f ",abs(V_a),atand(imag(V_a),real(V_a) )) ;
printf("\n \n    Phase voltages are , [V_af ; V_bf ; V_cf ] = pu V \n") ;
printf("\n    %.4f<%.1f ",abs(V_f),atand(imag(V_f),real(V_f) )) ;
printf("\n \n (d) Line-to-line voltages at fault points are , V_abf = %.4f<%.1f pu V \n",abs(V_abf),atand(imag(V_abf),real(V_abf) )) ;
printf("\n     Line-to-line voltages at fault points are , V_abf = %.4f<%.1f pu V \n",abs(V_bcf),atand(imag(V_bcf),real(V_bcf) )) ;
printf("\n     Line-to-line voltages at fault points are , V_caf = %.4f<%.1f pu V \n",abs(V_caf),atand(imag(V_caf),real(V_caf) )) ;

printf("\n NOTE : ERROR : Calclation mistake in textbook from case(c) onwards \n") ;
