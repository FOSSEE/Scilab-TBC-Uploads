// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 12: POWER,ENERGY,AND EFFICIENCY RELATIONS OF DC AND AC DYNAMOS
// Example 12-19

clear; clc; close; // Clear the work space and console.

// Given data
V = 220 ; // Rated voltage of SCIM in volt
f = 60 ; // Frequency in Hz
P = 4 ; // Number of poles
PF = 0.85 ; // power factor of capacitor start IM
// nameplate details
hp_IM = 5 ; // power rating of IM in hp
I_L = 28 ; // Rated line current in A
S_r = 1620 ; // Rotor speed of IM in rpm

// No-load test data
I_nl = 6.4 ; // No-load line current in A
V_nl = 220 ; // No-load line voltage in volt
P_nl = 239 ; // No-load power reading in W
s_nl = 0.01 ; // No-load slip

// Blocked rotor test
I_br = 62 ; // Blocked rotor line current in A
V_br = 64 ; // Blocked rotor voltage in volt
P_br = 1922 ; // Blocked rotor power reading in W
s_br = 1 ; // blocked rotor slip(unity) 

// Calculations
// case a
R_e1s = P_br / (I_br^2); // Equivalent total resistance of IM in ohm

// case b
P_in = P_nl ; // Input power to IM in W
I_1s = I_nl ; // Input current in A
P_ro = P_in - ((I_1s)^2 * R_e1s); // Rotational losses in W

// case c
S = (120*f/P); // Speed of synchronous magnetic field in rpm
S_fl = S_r ; // Full-load rotor speed of IM in rpm 
s_fl = (S - S_fl)/S ; // Full-load Slip 

LF1 = 1/4 ; // Load fraction
LF2 = 1/2 ; // Load fraction
LF3 = 3/4 ; // Load fraction
LF4 = 5/4 ; // Load fraction

s_LF1 = s_fl*LF1 ; // slip at 1/4 rated load
s_LF2 = s_fl*LF2 ; // slip at 1/2 rated load
s_LF3 = s_fl*LF3 ; // slip at 3/4 rated load
s_LF4 = s_fl*LF4 ; // slip at 5/4 rated load

// case d
s_o = s_nl ; // No-load slip
P_rs_LF1 = P_ro * (1 - s_LF1)/(1 - s_o); // Rotational losses in W at s_LF1
P_rs_LF2 = P_ro * (1 - s_LF2)/(1 - s_o); // Rotational losses in W at s_LF2
P_rs_LF3 = P_ro * (1 - s_LF3)/(1 - s_o); // Rotational losses in W at s_LF3
P_rs_fl = P_ro * (1 - s_fl)/(1 - s_o); // Rotational losses in W at full-load slip
P_rs_LF4 = P_ro * (1 - s_LF4)/(1 - s_o); // Rotational losses in W at s_LF4

// case e
I1s = I_L ; //  Line current in A
P_cu_fl = (I1s)^2*R_e1s ; // Equivalent copper loss at full-load slip
P_cu_LF1 = (LF1)^2 * P_cu_fl ; // Equivalent copper loss at s_LF1
P_cu_LF2 = (LF2)^2 * P_cu_fl ; // Equivalent copper loss at s_LF2
P_cu_LF3 = (LF3)^2 * P_cu_fl ; // Equivalent copper loss at s_LF3
P_cu_LF4 = (LF4)^2 * P_cu_fl ; // Equivalent copper loss at s_LF4

// case f
Input = V*I_L*PF ; // Input to single phase capacitor start IM

// Efficiency at 1/4 rated load
eta_LF1 = ( Input*LF1 - (P_rs_LF1 + P_cu_LF1) ) / (Input*LF1) * 100 ;

// Efficiency at 1/2 rated load
eta_LF2 = ( Input*LF2 - (P_rs_LF2 + P_cu_LF2) ) / (Input*LF2) * 100 ;

// Efficiency at 3/4 rated load
eta_LF3 = ( Input*LF3 - (P_rs_LF3 + P_cu_LF3) ) / (Input*LF3) * 100 ;

// Efficiency at rated load
eta_fl = ( Input - (P_rs_fl + P_cu_fl) ) / (Input) * 100 ;

// Efficiency at 5/4 rated load
eta_LF4 = ( Input*LF4 - (P_rs_LF4 + P_cu_LF4) ) / (Input*LF4) * 100 ;

// case g
// since eta is calculated in percent divide it by 100 for hp calculations
P_o_LF1 = (Input*LF1*eta_LF1/100)/746 ; // Output hp at 1/4 rated load
P_o_LF2 = (Input*LF2*eta_LF2/100)/746 ; // Output hp at 1/2 rated load
P_o_LF3 = (Input*LF3*eta_LF3/100)/746 ; // Output hp at 3/4 rated load
P_o = (Input*eta_fl/100)/746 ; // Output hp at 1/4 rated load
P_o_LF4 = (Input*LF4*eta_LF4/100)/746 ; // Output hp at 5/4 rated load

// case h
hp = P_o ; // Rated output horsepower
S_fl = S_r ; // Full-load rotor speed in rpm
T_o = (P_o*5252)/S_fl ; // Outpue torque at full-load in lb-ft
T_o_Nm = T_o * 1.356 ; // Outpue torque at full-load in N-m

// Display the results
disp("Example 12-19 Solution : "); 

printf(" \n a: Equivalent total resistance of IM :\n    R_e1s = %.1f Ω \n",R_e1s);

printf(" \n b: Rotational losses :\n    P_ro = %.1f W \n ",P_ro);

printf(" \n c: Slip at rated load : s = %.1f \n    Slip,",s_fl);
printf(" \n    s at %.2f rated load = %.3f",LF1,s_LF1);
printf(" \n    s at %.2f rated load = %.3f",LF2,s_LF2);
printf(" \n    s at %.2f rated load = %.3f",LF3,s_LF3);
printf(" \n    s at %.2f rated load = %.3f \n ",LF4,s_LF4);

printf(" \n d: Rotational losses :\n ");
printf(" \n    P_r at at %.2f rated load = %.1f W ",LF1,P_rs_LF1);
printf(" \n    P_r at at %.2f rated load = %.1f W ",LF2,P_rs_LF2);
printf(" \n    P_r at at %.2f rated load = %.1f W ",LF3,P_rs_LF3);
printf(" \n    P_r at at full load = %.1f W ",P_rs_fl);
printf(" \n    P_r at at %.2f rated load = %.1f W \n ",LF4,P_rs_LF4);

printf(" \n e: At full-load, P_cu = %d W \n",P_cu_fl);
printf(" \n    P_cu at %.2f rated load = %.2f W",LF1,P_cu_LF1)
printf(" \n    P_cu at %.2f rated load = %.2f W",LF2,P_cu_LF2)
printf(" \n    P_cu at %.2f rated load = %.2f W",LF3,P_cu_LF3)
printf(" \n    P_cu at %.2f rated load = %.2f W \n",LF4,P_cu_LF4)

printf(" \n f: Full-load input = %.f W \n",Input);
printf(" \n    Efficiency :\n    η at %.2f rated load = %.1f percent \n",LF1,eta_LF1);
printf(" \n    η at %.2f rated load = %.1f percent \n",LF2,eta_LF2);
printf(" \n    η at %.2f rated load = %.1f percent \n",LF3,eta_LF3);
printf(" \n    η at rated load = η_fl = %.1f percent \n",eta_fl);
printf(" \n    η at %.2f rated load = %.1f percent \n",LF4,eta_LF4);
printf(" \n    Please note: Calculation error for η_fl in textbook.\n");

printf(" \n g: Output horsepower :\n    P_o at %.2f rated load = %.3f hp \n",LF1,P_o_LF1);
printf(" \n    P_o at %.2f rated load = %.3f hp \n",LF2,P_o_LF2);
printf(" \n    P_o at %.2f rated load = %.3f hp \n",LF3,P_o_LF3);
printf(" \n    P_o at rated load = %.3f hp \n",P_o);
printf(" \n    P_o at %.2f rated load = %.3f hp \n",LF4,P_o_LF4);

printf(" \n h: Output torque at full-load :\n    T_o = %.1f lb-ft",T_o);
printf(" \n    T_o = %.2f N-m ≃ %.1f N-m",T_o_Nm,T_o_Nm);
