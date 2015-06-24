// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-16

clear; clc; close; // Clear the work space and console.

// Given data
// code letter = J
P = 6 ; // Number of poles
S_r = 1176 ; // rotor speed in rpm
V = 220 ; // Rated voltage of SCIM in volt
f = 60 ; // Frequency in Hz
hp_SCIM = 7.5 ; // Power rating of SCIM in hp

R_ap = 0.3 ; // armature resistance in ohm/phase
R_r = 0.144 ; // rotor resistance in ohm/phase
jX_m = 13.5 ; // reactance in ohm/phase
jX_s = 0.5 ; // synchronous reactance in ohm/phase
jX_lr = 0.2 ; // Locked rotor reactance in ohm/phase
P_r = 300 ; // Rotational losses in W

disp("Example 12-16 : "); 
// Calculations
S = (120*f/P); // Speed of synchronous magnetic field in rpm
// case a
s = (S-S_r)/S ; // Slip

R_r_by_s = R_r / s ;

// case b
printf(" \n From fig.12-11 , using the format method of mesh analysis,we may write");
printf(" \n the array by inspection :\n ");
printf(" \n_______________________________________________");
printf(" \n \t     I_1 \t I_2 \t\t V ");
printf(" \n_______________________________________________");
printf(" \n\t (0.3+j14)   -(0+j13.5) \t(127+j0)");
printf(" \n\t-(0+j13.5)   (7.2+j13.7) \t 0");
printf(" \n_______________________________________________\n");

A = [ (0.3 + %i*14) -%i*13.5 ; (-%i*13.5)  (7.2 + %i*13.7) ]; // Matrix containing above mesh eqns array
delta = det(A); // Determinant of A

// case b : Stator armature current I_p in A
I_p = det( [ (127+%i*0) (-%i*13.5) ; 0 (7.2 + %i*13.7) ] ) / delta ;
I_p_m = abs(I_p);//I_p_m=magnitude of I_p in A
I_p_a = atan(imag(I_p) /real(I_p))*180/%pi;//I_p_a=phase angle of I_p in degrees
I_1 = I_p ; // Stator armature current in A

// case c : Rotor current I_r per phase in A
I_r = det( [ (0.3 + %i*14) (127+%i*0) ; (-%i*13.5) 0 ] ) / delta ;
I_r_m = abs(I_r);//I_r_m=magnitude of I_r in A
I_r_a = atan(imag(I_r) /real(I_r))*180/%pi;//I_r_a=phase angle of I_r in degrees

// case d
theta = I_p_a ; // Motor PF angle in degrees
cos_theta = cosd(theta); // Motor PF

// case e
I_p = I_p_m ; // Stator armature current in A
V_p = V / sqrt(3); // Phase voltage in volt
SPI = V_p * I_p * cos_theta ; // Stator Power Input in W

// case f
SCL = (I_p)^2 * R_ap ; // Stator Copper Loss in W

// case g
// Subscripts 1 and 2 for RPI indicates two methods of calculating RPI
RPI_1 = SPI - SCL ; // Rotor Power Input in W
RPI_2 = (I_r_m)^2 * (R_r/s); // Rotor Power Input in W
RPI =RPI_1 ;

// case h
RCL = s*(RPI); // Rotor copper losses in W

// case i
// Subscripts 1 , 2 and 3 for RPD indicates three methods of calculating RPD
RPD_1 = RPI - RCL ; // Rotor Power Developed in W
RPD_2 = RPI * ( 1 - s ); // Rotor Power Developed in W
RPD = RPD_1 ;

// case j
RPO = 3*RPD - P_r ; // Rotor Power Developed in W

// case k
P_to = RPO ; // Total rotor power in W
T_o = (7.04*P_to)/S_r ; // Total 3-phase torque in lb-ft

// case l
hp = P_to / 746 ; // Output horsepower

// case m
P_in = 3*SPI ; // Input power to stator in W
P_o = RPO ; // Output power in W
eta = P_o / P_in * 100 ; // Motor efficiency at rated load

// Display the results
disp("Solution : "); 
printf(" \n a: s = %.2f \n    R_r/s = %.1f Ω \n",s,R_r_by_s );

printf(" \n    Determinant Δ = ");disp(delta);

printf(" \n b: Stator armature current :\n    I_p in A = ");disp(I_1);
printf(" \n    I_p = I_1 = %.2f <%.2f A \n ",I_p_m , I_p_a );

printf(" \n c: Rotor current per phase :\n    I_r in A = ");disp(I_r);
printf(" \n    I_r = I_2 = %.3f <%.2f A \n ",I_r_m , I_r_a );

printf(" \n d: Motor PF :\n    cosӨ = %.4f \n",cos_theta);

printf(" \n e: Stator Power Input :\n    SPI = %d W \n",SPI);

printf(" \n f: Stator Copper Loss :\n    SCL = %.1f W \n",SCL);

printf(" \n g: Rotor Power Input :\n    RPI = %.1f W(method 1) ", RPI_1);
printf(" \n    RPI = %.1f W (method 2)\n",RPI_2);

printf(" \n h: Rotor copper loss :\n    RCL = %.1f W\n",RCL);

printf(" \n i: Rotor Power Developed :\n    RPD = %.1f W \n",RPD_1);

printf(" \n    RPD = %.1f W \n ",RPD_2);

printf(" \n j: Total 3-phase rotor power:\n    RPO = %f W \n",RPO);

printf(" \n k: Total output torque developed :\n    T_o = %.2f lb-ft\n",T_o);

printf(" \n l: Output horsepower : \n    hp = %.2f hp (rated 7.5 hp)\n",hp);

printf(" \n m: Motor efficiency at rated load :\n    η = %.2f percent \n",eta);

printf(" \n n: See Fig.12-12");
