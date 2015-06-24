// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.11 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
kv = 230 ; // Line voltage in kV from Exa 9.9
Z_0 = 0.56*%i ; // Zero-sequence impedance in pu
Z_1 = 0.2618*%i ; // Zero-sequence impedance in pu
Z_2 = 0.3619*%i ; // Zero-sequence impedance in pu
z_f = 5 ; // Fault impedance in Ω
v = 1*exp(%i*0*%pi/180) ; // 
a = 1*exp(%i*120*%pi/180) ; // By symmetrical components theory to 3-Φ system
A = [1 1 1; 1 a^2 a ;1 a a^2] ;

// CALCULATIONS
// For case (b)
I_a0 = 0 ; // Sequence current in A
Z_B = kv^2/200 ; // Base impedance of 230 kV line
Z_f = z_f/Z_B ; // fault impedance in pu
I_a1 = v/(Z_1 + Z_2 + Z_f) ; // Sequence current in pu A
I_a2 = - I_a1 ; // Sequence current in pu A
I_f = [A] * [I_a0 ; I_a1 ; I_a2] ; // Phase current in pu A

// For case (c)
V_a = [0 ; v ; 0]-[Z_0 0 0 ; 0 Z_1 0 ; 0 0 Z_2]*[I_a0 ; I_a1 ; I_a2] ; // Sequence voltages in pu V
V_f = A*V_a ; // Phase voltages in pu V

// For case (d)
V_abf = V_f(1,1) - V_f(2,1) ; // Line-to-line voltages at fault points in pu V
V_bcf = V_f(2,1) - V_f(3,1) ; // Line-to-line voltages at fault points in pu V
V_caf = V_f(3,1) - V_f(1,1) ; // Line-to-line voltages at fault points in pu V



// DISPLAY RESULTS
disp("EXAMPLE : 9.11 :SOLUTION :-") ;
printf("\n (b) Sequence currents are , \n") ;
printf("\n  I_a0 = %.f pu A ",I_a0) ;
printf("\n  I_a1 = %.4f<%.2f pu A ",abs(I_a1),atand( imag(I_a1),real(I_a1) )) ;
printf("\n  I_a2 = %.4f<%.2f pu A ",abs(I_a2),atand( imag(I_a2),real(I_a2) )) ;
printf("\n \n Phase currents are , [I_af ; I_bf ; I_cf] =  pu A \n") ;
printf("\n       %.4f<%.1f ",abs(I_f),atand(imag(I_f),real(I_f) )) ;
printf("\n \n (c) Sequence voltages are , [V_a0 ; V_a1 ; V_a2] =  pu V \n") ;
printf("\n       %.4f<%.1f ",abs(V_a),atand(imag(V_a),real(V_a) )) ;
printf("\n \n  Phase voltages are , [V_af ; V_bf ; V_cf] =  pu V \n") ;
printf("\n       %.4f<%.1f ",abs(V_f),atand(imag(V_f),real(V_f) )) ;
printf("\n \n (d) Line-to-line voltages at the fault points are \n") ;
printf("\n     V_abf = %.4f<%.1f pu V \n",abs(V_abf),atand( imag(V_abf),real(V_abf) )) ;
printf("\n     V_bcf = %.4f<%.1f pu V \n",abs(V_bcf),atand( imag(V_bcf),real(V_bcf) )) ;
printf("\n     V_caf = %.4f<%.1f pu V \n",abs(V_caf),atand( imag(V_caf),real(V_caf) )) ;

printf("\n \n NOTE : ERROR : Minor calclation mistake in textbook ") ;
