// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-15

clear; clc; close; // Clear the work space and console.

// Given data(from Ex.12-14)
pole = 4 ;// Number of poles in Induction motor
f = 60 ; // Frequency in Hz
V = 220 ; // Rated voltage of IM in volt
hp_IM = 5 ; // Power rating of IM in hp
PF = 0.9 ; // Power factor
I_L = 16 ; // Line current in A
S_r = 1750 ; // Speed of IM in rpm

// No-load test data
I_nl = 6.5 ; // No-load line current in A
V_nl = 220 ; // No-load line voltage in volt
P_nl = 300 ; // No-load power reading in W

// Blocked rotor test
I_br = 16 ; // Blocked rotor line current in A
V_br = 50 ; // Blocked rotor voltage in volt
P_br = 800 ; // Blocked rotor power reading in W
R_dc = 1 ; // dc resistance in ohm between lines 

// given data from ex.12-15
V = 220 ; // voltage rating in volt
P_input = 5500 ; // power drawn in W

// Calculations
// Preliminary calculations
R_e1 = 1.25*R_dc ; // Equivalent total resistance of IM in ohm
P_in = P_nl ; // Input power to IM in W
I1 = I_nl ; // Input current in A
P_r = P_in - (3/2 * (I1)^2 * R_e1); // Rotational losses in W

I_1 = I_L ;
SCL = (3/2 * (I_1)^2 * R_e1) ; // Stator Copper Loss in W at full-load
SPI = P_input ; // Stator Power Input in W
RPI = SPI - SCL ; // Rotor Power Input in W

S = (120*f/pole); // Speed of synchronous magnetic field in rpm
s = (S-S_r)/S ; // Slip

RPD = RPI*(1-s); // Rotor Power Developed in W
RPO = RPD - P_r ; // Rotor Power Output in W

// case a
P_o = RPO ;
eta_fl = (P_o / P_input)*100 ; // Full-load efficiency

// case b
hp = P_o / 746 ; // Output horsepower
T_o = (hp*5252)/S_r ; // Output torque in lb-ft
T_o_Nm = T_o * 1.356 ; // Output torque in N-m

// Display the results
disp("Example 12-15 Solution : "); 

printf(" \n Preliminary calculations :");
printf(" \n R_e1 = %.2f Ω \n",R_e1);
printf(" \n P_r = %.1f W \n ",P_r);
printf(" \n SCL(fl) = %d W \n ",SCL);
printf(" \n RPI(fl) = %d W \n ",RPI);
printf(" \n RPD(fl) = %f W ≃ %.1f W \n ",RPD,RPD);
printf(" \n RPO(fl) = %f W ≃ %.f W \n ",RPO,RPO);

printf(" \n a: Full-load efficiency :\n    η_fl = %.1f percent \n",eta_fl);

printf(" \n b: Output horsepower :\n    hp = %.2f hp at full-load \n",hp);
printf(" \n    Output torque at full-load :\n    T_o = %f lb-ft ≃ %.1f lb-ft",T_o,T_o);
printf(" \n    T_o = %f lb-ft ≃ %.2f N-m \n ",T_o_Nm,T_o_Nm);

printf(" \n c: Comparision of results");
printf(" \n ________________________________________________________________");
printf(" \n \t\t\t\t\t Ex.12-14\tEx.12-15");
printf(" \n ________________________________________________________________");
printf(" \n \t η_fl(percent) \t\t\t 82.4 \t\t %.1f ",eta_fl);
printf(" \n \t Rated output(hp) \t\t 6.06 \t\t %.2f ",hp);
printf(" \n \t Rated output torque(lb-ft) \t 18.2 \t\t %.1f ",T_o);
printf(" \n ________________________________________________________________");
