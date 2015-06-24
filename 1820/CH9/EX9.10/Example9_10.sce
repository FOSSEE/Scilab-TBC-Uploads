// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 9 : SYMMETRICAL COMPONENTS AND FAULT ANALYSIS

// EXAMPLE : 9.10 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
Z_0 = 0.2619 * %i ;
Z_1 = 0.25 * %i ;
Z_2 = 0.25 * %i ;
v = 1 * exp(%i*0*%pi/180) ;
a = 1 * exp(%i*120*%pi/180) ; // By symmetrical components theory to 3-Φ system
A = [1 1 1; 1 a^2 a ;1 a a^2] ;

// CALCULATIONS
// For case (b)
I_a0 = v/(Z_0 + Z_1 + Z_2) ; // Sequence currents at fault point F in pu A
I_a1 = I_a0 ;
I_a2 = I_a0 ;

// For case (c)
I_a1g1 = (1/2) * I_a1 ; // Sequence current at terminals of generator G1 in pu A
I_a2g1 = (1/2) * I_a2 ;
I_a0g1 = 0.5/(0.55 + 0.5)*I_a0 ; // By current division in pu A

// For case (d)
I_f = [A] * [I_a0g1 ; I_a1g1 ; I_a2g1] ; // Phase current at terminal of generator G1 in pu A

// For case (e)
V_a = [0 ; v ; 0] - [Z_0 0 0 ; 0 Z_1 0 ; 0 0 Z_2]*[I_a0g1 ; I_a1g1 ; I_a2g1] ; // Sequence voltage in pu V

// For case (f)
V_f = [A]*[V_a] ; // Phase voltage at terminal of generator G1 in pu V

// For case (g)
I_a1g2 = (1/2) * I_a1 ; // By symmetry for Generator G2
I_a2g2 = (1/2) * I_a2 ;
I_a0g2 = 0 ; // By inspection
// V_a1(HV) leads V_a1(LV) by 30 degree & V_a2(HV) lags V_a2(LV) by 30 degree
I_a0G2 = I_a0g2 ;
I_a1G2 = abs(I_a1g2)*exp(%i * (atand( imag(I_a1g2),real(I_a1g2) ) - 30) * %pi/180) ; // (-90-30) = (-120)
I_a2G2 = abs(I_a2g2)*exp(%i *(atand( imag(I_a2g2),real(I_a2g2) ) + 30) * %pi/180)  ; // (-90+30) = (-60)

I_f2 = [A] * [I_a0G2 ; I_a1G2 ; I_a2G2] ; // Phase current at terminal of generator G2 in pu A

 // Sequence voltage at terminal of generator G2 in pu V
V_a0G2 = 0 ;
V_a1G2 = abs(V_a(2,1))*exp(%i * (atand( imag(V_a(2,1)),real(V_a(2,1)) ) - 30) * %pi/180) ; // (0-30) = (-30)
V_a2G2 = abs(V_a(3,1))*exp(%i * (atand( imag(V_a(3,1)),real(V_a(3,1)) ) + 30) * %pi/180) ; // (180+30)=(210)=(-150)

V_f2 = A * [V_a0G2 ; V_a1G2 ; V_a2G2] ; // Phase voltage at terminal of generator G2 in pu V

// DISPLAY RESULTS
disp("EXAMPLE : 9.10 : SOLUTION :-") ;
printf("\n (b) The sequence current at fault point F , I_a0 = I_a1 = I_a2 = %.4f<%.f pu A \n",abs(I_a0),atand(imag(I_a0),real(I_a0) )) ;
printf("\n (c) Sequence currents at the terminals of generator G1 , \n") ;
printf("\n     I_a0,G_1 = %.4f<%.f pu A ",abs(I_a0g1),atand( imag(I_a0g1),real(I_a0g1) )) ;
printf("\n     I_a1,G_1 = %.4f<%.f pu A ",abs(I_a1g1),atand( imag(I_a1g1),real(I_a1g1) )) ;
printf("\n     I_a2,G_1 = %.4f<%.f pu A ",abs(I_a2g1),atand( imag(I_a2g1),real(I_a2g1) )) ;
printf("\n \n (d) Phase currents at terminal of generator G1 are , [I_af ; I_bf ; I_cf] = pu A \n") ;
printf("\n       %.4f<%.f ",abs(I_f),atand(imag(I_f),real(I_f) )) ;
printf("\n \n (e) Sequence voltages at the terminals of generator G1 , [V_a0 ; V_a1 ; V_a2 ] = pu V \n") ;
printf("\n       %.4f<%.1f ",abs(V_a),atand(imag(V_a),real(V_a) )) ; 
printf("\n \n (f) Phase voltages at terminal of generator G1 are , [V_af ; V_bf ; V_cf] = pu V \n") ;
printf("\n       %.4f<%.1f ",abs(V_f),atand(imag(V_f),real(V_f) )) ; 
printf("\n \n (g) Sequence currents at the terminals of generator G2 , \n") ;
printf("\n     I_a0,G_2 = %.f<%.f pu A ",abs(I_a0G2),atand( imag(I_a0G2),real(I_a0G2) )) ;
printf("\n     I_a1,G_2 = %.4f<%.f pu A",abs(I_a1G2),atand( imag(I_a1G2),real(I_a1G2) )) ;
printf("\n     I_a2,G_2 = %.4f<%.f pu A",abs(I_a2G2),atand( imag(I_a2G2),real(I_a2G2) )) ;
printf("\n \n     Phase currents at terminal of generator G2 are , [I_af ; I_bf ; I_cf] = pu A \n") ;
printf("\n       %.4f<%.f ",abs(I_f2),atand(imag(I_f2),real(I_f2) )) ;
printf("\n \n     Sequence voltages at the terminals of generator G2 , [V_a0 ; V_a1 ; V_a2 ] = pu V\n") ;
printf("\n        %.f<%.f ",abs(V_a0G2),atand( imag(V_a0G2),real(V_a0G2) )) ;
printf("\n        %.4f<%.f ",abs(V_a1G2),atand( imag(V_a1G2),real(V_a1G2) )) ;
printf("\n        %.4f<%.f ",abs(V_a2G2),atand( imag(V_a2G2),real(V_a2G2) )) ;
printf("\n \n     Phase voltages at terminal of generator G2 are , [V_af ; V_bf ; V_cf] = pu V \n") ;
printf("\n        %.4f<%.1f ",abs(V_f2),atand(imag(V_f2),real(V_f2) )) ; 

printf("\n \n NOTE : ERROR : Calclation mistake in textbook case(f) ") ;
printf("\n In case (g) V_a2 = 0.1641<-150 is same as textbook answer V_a2 = 0.1641<210 , i.e (360-150)=210 \n") ;
