// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 5 : UNDERGROUND POWER TRANSMISSION AND GAS-INSULATED TRANSMISSION LINES

// EXAMPLE : 5.9 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
kV = 35 ; // voltage in kV
f = 60 ; // operating frequency of cable in hertz
d = 0.681 ; // diameter of conductor in inches
t_i = 345 ; // Insulation thickness in cmil
t_s = 105 ; // Metal sheet thickness in cmil
r_c = 0.190 ; // Conductor ac resistance in Ω/mi
l = 10 ; // Length of cable in mi

// CALCULATIONS
// For case (a)
T_i = t_i/1000 ; // insulation thickness in inch
T_s = t_s/1000 ; // Metal sheet thickness in inch
r_i = (d/2) + T_i ; // Inner radius of metal sheath in inches
r_0 = r_i + T_s ; // Outer radius of metal sheath in inches
S = r_i + r_0 + T_s ; // Spacing b/w conductor centers in inches
X_m = 0.2794 * (f/60) * log10 ( 2*S/(r_0 + r_i) ) ; // Mutual reactance b/w conductor & sheath per phase in Ω/mi . From Equ 5.78
X_m1 = X_m * l ; // Mutual reactance b/w conductor & sheath in Ω/phase

// For case (b)
r_s = 0.2/((r_0+r_i)*(r_0-r_i)) ; // sheet resistance per phase in Ω/mi/phase . From equ 5.79
r_s1 = r_s * l ; // sheet resistance per phase in Ω/phase

// For case (c)
d_r = r_s * (X_m^2)/( (r_s)^2 + (X_m)^2 ) ; // increase in conductor resistance due to sheath current in Ω/mi/phase . From equ 5.77
d_r1 = d_r * l ; //  // increase in conductor resistance due to sheath current in Ω/phase

// For case (d)
r_a = r_c + ( r_s * X_m^2 )/( (r_s)^2 + (X_m)^2 ) ; // Total positive or negative sequence resistance including sheath current effects in Ω/mi/phase . From equ 5.84
r_a1 = r_a * l ; // Total positive or negative sequence resistance including sheath current effects in Ω/phase

// For case (e)
ratio = d_r/r_c ; // ratio = sheath loss/conductor loss

// For case (f)
I = 400 ; // conductor current in A ( given for case (f) )
P_s = 3 * (I^2) * ( r_s * X_m^2)/( r_s^2 + X_m^2 ) ; // For three phase loss in W/mi
P_s1 = P_s * l ; // Total sheath loss of feeder in Watts

// DISPLAY RESULTS
disp("EXAMPLE : 5.9 : SOLUTION :-") ;
printf("\n (a) Mutual reactance b/w conductors & sheath , X_m = %.5f Ω/mi/phase \n",X_m) ;
printf("\n    or Mutual reactance b/w conductors & sheath , X_m = %.4f Ω/phase \n",X_m1) ;
printf("\n (b) Sheath resistance of cable , r_s = %.4f Ω/mi/phase \n",r_s) ;
printf("\n    or Sheath resistance of cable , r_s = %.3f Ω/phase \n",r_s1) ;
printf("\n (c) Increase in conductor resistance due to sheath currents , Δr = %.5f Ω/mi/phase \n",d_r) ;
printf("\n    or Increase in conductor resistance due to sheath currents , Δr = %.4f Ω/phase \n",d_r1) ;
printf("\n (d) Total resistance of conductor including sheath loss , r_a = %.5f Ω/mi/phase \n ",r_a) ;
printf("\n    or Total resistance of conductor including sheath loss , r_a = %.4f Ω/phase \n ",r_a1) ;
printf("\n (e) Ratio of sheath loss to conductor loss , Ratio = %.4f \n",ratio) ;
printf("\n (f) Total sheath loss of feeder if current in conductor is 400A , P_s = %.2f W \n",P_s1) ;

printf("\n NOTE : ERROR : There are mistakes in some units in the Textbook \n") ;
