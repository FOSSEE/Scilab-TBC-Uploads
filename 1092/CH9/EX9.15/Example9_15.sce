// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-15

clear; clc; close; // Clear the work space and console.

// Given data
// 3-phase Y-connected SCIM
P = 4 ; // Number of poles in SCIM 
S_r = 1746 ; // Rated rotor speed in rpm
V = 220 ; // Voltage rating of SCIM in volt
f = 60 ; // Frequency in Hz
P_hp = 10 ; // power rating of SCIM in hp
R_a = 0.4 ; // Armature resistance in ohm
R_r = 0.14 ; // Rotor resistance in ohm
jXm = 16 ; // Reactance in ohm
jXs = 0.35 ; // Synchronous reactance in ohm
jXlr = 0.35 ; // Locked rotor reactance in ohm
P_r_total = 360 ; // Total rotational losses in W

// Calculations
V_p = V / sqrt(3); // Voltage per phase in volt

S = (120*f)/P ; // Speed in rpm of the rotating magnetic field
// preliminary calculations
s = ( S - S_r)/S ; // slip

disp("Example 9-15 :");

printf(" \n From Fig.9-13,using the format method of mesh analysis,we may");
printf(" \n write the array by inspection :\n");
printf(" \n __________________________________________________________");
printf(" \n    I_1(A) \t\t I_2(A) \t\t V(volt)");
printf(" \n __________________________________________________________");
printf(" \n   (0.4 + j16.35) \t -(0 + j16) \t\t (127 + j0)");
printf(" \n   -(0 + j16) \t\t (4.67 + j16.35) \t     0");
printf(" \n __________________________________________________________");

A = [ (0.4 + %i*16.35) -%i*16 ; (-%i*16)  (4.67 + %i*16.35) ]; // Matrix containing above mesh eqns array
delta = det(A); // Determinant of A

// case a : Stator armature current I_p in A
I_p = det( [ (127+%i*0) (-%i*16) ; 0 (4.67 + %i*16.35) ] ) / delta ;
I_p_m = abs(I_p);//I_p_m=magnitude of I_p in A
I_p_a = atan(imag(I_p) /real(I_p))*180/%pi;//I_p_a=phase angle of I_p in degrees
I_1 = I_p ; // Stator armature current in A

// case b : Rotor current I_r per phase in A
I_r = det( [ (0.4 + %i*16.35) (127+%i*0) ; (-%i*16) 0 ] ) / delta ;
I_r_m = abs(I_r);//I_r_m=magnitude of I_r in A
I_r_a = atan(imag(I_r) /real(I_r))*180/%pi;//I_r_a=phase angle of I_r in degrees

// case c
theta_1 = I_p_a ; // Motor PF angle in degrees
cos_theta1 = cosd(theta_1); // Motor PF

// case d
I_p = I_p_m ; // Stator armature current in A
SPI = V_p * I_p * cos_theta1 ; // Stator Power Input in W

// case e
SCL = (I_p)^2 * R_a ; // Stator Copper Loss in W

// case f
// Subscripts 1 and 2 for RPI indicates two methods of calculating RPI
RPI_1 = SPI - SCL ; // Rotor Power Input in W
RPI_2 = (I_r_m)^2 * (R_r/s); // Rotor Power Input in W
RPI =RPI_1 ;

// case g
// Subscripts 1 , 2 and 3 for RPD indicates three methods of calculating RPD
RPD_1 = RPI * ( 1 - s ); // Rotor Power Developed in W
RCL = s*(RPI); // Rotor copper losses in W
RPD_2 = RPI - RCL ; // Rotor Power Developed in W
RPD_3 = (I_r_m)^2 * R_r * ((1-s)/s); // Rotor Power Developed in W
RPD = RPD_1 ;

// case h
P_r = P_r_total / 3 ; // Rotational Losses per phase in W
P_o = RPD - P_r ; // Rotor power per phase in W
P_to = 3*P_o ; // Total rotor power in W

// case i
T = 7.04 * (P_to/S_r); // Total 3-phase torque in lb-ft

// case j
P_t = P_to ;
hp = P_t / 746 ; // Output horsepower

// case k
P_in = SPI ; // Input power to stator in W
eta = P_o / P_in * 100 ; // Motor efficiency at rated load

// Display the results
disp("Solution : ");
printf(" \n Preliminary calculations\n");
printf(" \n Slip : s = %.2f \n R_r/s = %.2f ohm \n",s,R_r/s);

printf(" \n Determinant Δ = ");disp(delta);

printf(" \n a: Stator armature current :\n    I_p in A = ");disp(I_1);
printf(" \n    I_p = I_1 = %.2f <%.2f A \n ",I_p_m , I_p_a );

printf(" \n b: Rotor current per phase :\n    I_r in A = ");disp(I_r);
printf(" \n    I_r = I_2 = %.3f <%.2f A \n ",I_r_m , I_r_a );

printf(" \n c: Motor PF :\n    cosӨ1 = %.4f \n",cos_theta1);

printf(" \n d: Stator Power Input :\n    SPI = %d W \n",SPI);

printf(" \n e: Stator Copper Loss :\n    SCL = %.f W \n",SCL);

printf(" \n f: Rotor Power Input :\n    RPI = %d W(method 1) ", RPI_1);
printf(" \n    RPI = %.f W (method 2)\n",RPI_2);
printf(" \n    Note: RPI calculated by 2nd method slightly varies from that of");
printf(" \n          textbook value because of non-approximation of I_r while");
printf(" \n          calculating in scilab.\n")

printf(" \n g: Rotor Power Developed :\n    RPD = %.f W \n",RPD_1);
printf(" \n    Rotor copper loss :\n    RCL = %d W\n",RCL);
printf(" \n    RPD = %.f W \n    RPD = %d W \n ",RPD_2,RPD_3);

printf(" \n h: Rotor power per phase :\n    P_o/φ = %f W/φ ",P_o);
printf(" \n\n    Total rotor power:\n    P_to = %f W \n",P_to);
printf(" \n    Above P_o/φ and P_to values are not approximated while calculating in ");
printf(" \n    SCILAB.So,they vary slightly from textbook values.\n");

printf(" \n i: Total 3-phase output torque :\n    T = %.f lb-ft\n",T);

printf(" \n j: Output horsepower : \n    hp = %.1f hp \n",hp);

printf(" \n k: Motor efficiency at rated load :\n    η = %.1f percent \n",eta)

printf(" \n Power flow diagram (per phase)\n");
printf(" \n   SPI----------> RPI---------> RPD----------> P_o");
printf(" \n (%d W)   |  (%d W)  |   (%d W)   |   (%d W)",SPI,RPI_1,RPD_3,P_o);
printf(" \n            |            |              |");
printf(" \n           SCL          RCL            P_r");
printf(" \n         (%.f W)       (%d W)         (%d W)",SCL,RCL,P_r);
