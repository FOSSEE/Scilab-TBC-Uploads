// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.7 :
// Page number 334
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 33000.0             // Voltage(V)
R = 0.7                 // Resistance(ohm/phase)
X = 3.5                 // Reactance(ohm/phase)
load_1 = 60.0           // Load on generator at station X(MW)
PF_1 = 0.8              // Lagging power factor
load_2 = 40.0           // Local load taken by consumer(MW)
PF_2 = 0.707            // Lagging power factor

// Calculations
V_ph = V/3**0.5                                                     // Phase voltage(V)
I_1 = load_1*10**6/(3**0.5*V*PF_1)*exp(%i*-acos(PF_1))              // Load current on generator at X(A)
I_2 = load_2*10**6/(3**0.5*V*PF_2)*exp(%i*-acos(PF_2))              // Current due to local load(A)
I_3 = I_1-I_2                                                       // Current through interconnector(A)
angle_I_3 = phasemag(I_3)                                           // Current through interconnector leads reference phasor by angle(°)
V_drop = (R+%i*X)*I_3                                               // Voltage drop across interconnector(V)
V_Y = V_ph-V_drop                                                   // Voltage at Y(V)
angle_V_Y = phasemag(V_Y)                                           // Angle of voltage at Y(°)
phase_diff = angle_I_3-angle_V_Y                                    // Phase difference b/w Y_Y and I_3(°)
PF_Y = cosd(phase_diff)                                             // Power factor of current received by Y
P_Y = 3*abs(V_Y*I_3)*PF_Y/1000.0                                    // Power received by station Y(kW)
phase_XY = abs(angle_V_Y)                                           // Phase angle b/w voltages of X & Y(°)

// Results
disp("PART II - EXAMPLE : 11.7 : SOLUTION :-")
printf("\nLoad received from station X to station Y = %.f kW", P_Y)
printf("\nPower factor of load received by Y = %.4f (lagging)", PF_Y)
printf("\nPhase difference between voltage of X & Y = %.2f° (lagging) \n", phase_XY)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision here")
