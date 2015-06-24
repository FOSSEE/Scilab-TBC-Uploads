// ELECTRIC POWER TRANSMISSION SYSTEM ENGINEERING ANALYSIS AND DESIGN
// TURAN GONEN
// CRC PRESS
// SECOND EDITION

// CHAPTER : 7 : TRANSIENT OVERVOLTAGES AND INSULATION COORDINATION

// EXAMPLE : 7.4 :
clear ; clc ; close ; // Clear the work space and console

// GIVEN DATA
R = 500 ; // Resistance in Ω
Z_c = 400 ; // characteristic impedance in Ω
v_f = 5000 ; // Forward travelling voltage wave in V
i_f = 12.5 ; // Forward travelling current wave in A

// CALCULATIONS
// For case (a)
r_v = (R - Z_c)/(R + Z_c) ; // Reflection coefficient of voltage wave

// For case (b)
r_i = -(R - Z_c)/(R + Z_c) ; // Reflection coefficient of current wave

// For case (c)
v_b = r_v * v_f ; // Backward-travelling voltage wave in V

// For case (d)
v = v_f + v_b ; // Voltage at end of line in V
v1 = (2 * R/(R + Z_c)) * v_f ; // (or) Voltage at end of line in V

// For case (e)
t1 = (2 * R/(R + Z_c)) ; // Refraction coefficient of voltage wave

// For case (f)
i_b = -( v_b/Z_c ) ; // backward-travelling current wave in A
i_b1 = -r_v * i_f ; // (or) backward-travelling current wave in A


// For case (g)
i = v/R ; // Current flowing through resistor in A

// For case (h)
t2 = (2 * Z_c/(R + Z_c)) ; // Refraction coefficient of current wave

// DISPLAY RESULTS
disp("EXAMPLE : 7.4 : SOLUTION :-") ;
printf("\n (a) Reflection coefficient of voltage wave , ρ = %.4f \n",r_v) ;
printf("\n (b) Reflection coefficient of current wave , ρ = %.4f \n",r_i) ;
printf("\n (c) Backward-travelling voltage wave , v_b = %.3f V \n",v_b) ;
printf("\n (d) Voltage at end of line , v = %.3f V \n",v) ;
printf("\n     From alternative method ")
printf("\n     Voltage at end of line , v = %.3f V \n",v) ;
printf("\n (e) Refraction coefficient of voltage wave , Γ = %.4f \n",t1) ;
printf("\n (f) Backward-travelling current wave , i_b = %.4f A \n",i_b) ;
printf("\n (g) Current flowing through resistor, i = %.4f A \n",i) ;
printf("\n (h) Refraction coefficient of current wave , Γ = %.4f \n",t2) ;
