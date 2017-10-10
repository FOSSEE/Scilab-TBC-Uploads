// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.9 :
// Page number 335-336
clear ; clc ; close ; // Clear the work space and console

// Given data
X = 2.80             // Combined reactance(ohm/phase)
load_1 = 7000.0      // Consumer load at station A(kW)
PF_1 = 0.9           // Lagging power factor
V = 11000.0          // Voltage(V)
load_2 = 10000.0     // Load supplied by station B(kW)
PF_2 = 0.75          // Lagging power factor

// Calculations
V_ph = V/3**0.5                                                         // Phase voltage(V)
I_1 = load_1*10**3/(3**0.5*V*PF_1)*exp(%i*-acos(PF_1))                  // Current at A due to local load(A)
I_2 = load_2*10**3/(3**0.5*V*PF_2)*exp(%i*-acos(PF_2))                  // Current at B due to local load(A)
IA_X = 0.5*(load_1+load_2)*1000/(3**0.5*V)                              // Current(A)
Y_1 = 220.443/V_ph                                                      // Solved manually referring textbook
X_1 = (1-Y_1**2)**0.5
angle_1 = atand(Y_1/X_1)                                                // Phasor lags by an angle(°)
IA_Y = (6849.09119318-V_ph*X_1)/X                                       // Current(A)
Y_X = IA_Y/IA_X
angle_2 = atand(Y_X)                                                    // Angle by which I_A lags behind V_A(°)
PF_A = cosd(angle_2)                                                    // Power factor of station A
angle_3 = acosd(PF_2)+angle_1                                           // Angle by which I_2 lags V_A(°)
I_22 = load_2*10**3/(3**0.5*V*PF_2)*exp(%i*-angle_3*%pi/180)            // Current(A)
I = 78.7295821622-%i*(IA_Y-177.942225747)                               // Current(A)
I_B = I_22-I                                                            // Current(A)
angle_4 = abs(phasemag(I_B))-angle_1                                    // Angle by which I_B lags behind V_B(°)
PF_B = cosd(angle_4)                                                    // Power factor of station B

// Results
disp("PART II - EXAMPLE : 11.9 : SOLUTION :-")
printf("\nPower factor of station A = %.4f (lagging)", PF_A)
printf("\nPower factor of station B = %.4f (lagging)", PF_B)
printf("\nPhase angle between two bus bar voltages = %.f° (V_B lagging V_A)", angle_1)
