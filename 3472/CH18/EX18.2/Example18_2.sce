// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 11: LOAD FREQUENCY CONTROL AND LOAD SHARING OF POWER GENERATING SOURCES

// EXAMPLE : 11.2 :
// Page number 330-331
clear ; clc ; close ; // Clear the work space and console

// Given data
kVA = 5000.0        // Rating of alternator(kVA)
N = 1500.0          // Speed(rpm)
V = 6600.0          // Voltage(V)
f = 50.0            // Frequency(Hz)
PF = 0.8            // Lagging power factor
x = 0.15            // Short circuit reactance

// Calculations
E = V/3**0.5                                                    // Phase voltage(V)
I = kVA*1000/(3**0.5*V)                                         // Full load current of alternator(A)
V_drop = E*x                                                    // Synchronous reactance drop(V)
X = V_drop/I                                                    // Synchronous reactance per phase(ohm)
P = 120*f/N                                                     // Number of poles
n = N/60                                                        // Speed(rps)
phi = acosd(PF)                                                 // Φ(°)
// Case(a)
theta_a = 2.0                                                   // For a 4 pole m/c. 1 mech degree = 2 elect degree
E_s_a = E*sind(theta_a)                                         // Synchronizing voltage(V)
I_s_a = E_s_a/X                                                 // Synchronizing current(A)
P_s_a = E*I_s_a                                                 // Synchronizing power per phase(W)
P_s_a_total = 3.0*P_s_a                                         // Total synchronizing power(W)
P_s_a_total_kw = P_s_a_total/1000.0                             // Total synchronizing power(kW)
T_s_a = P_s_a_total/(2*%pi*n)                                   // Synchronizing torque(N-m)
// Case(b)
sin_phi = sind(phi)
OB = ((E*PF)**2+(E*sin_phi+V_drop)**2)**0.5                     // Voltage(V)
E_b = OB                                                        // Voltage(V)
alpha_phi = atand((E*sin_phi+V_drop)/(E*PF))                    // α+Φ(°)
alpha = alpha_phi-phi                                           // α(°)
E_s_b = 2.0*E_b*sind(2.0/2)                                     // Synchronizing voltage(V)
I_s_b = E_s_b/X                                                 // Synchronizing current(A)
P_s_b = E*I_s_b*cosd((alpha+1.0))                               // Synchronizing power per phase(W)
P_s_b_total = 3.0*P_s_b                                         // Total synchronizing power(W)
P_s_b_total_kw = P_s_b_total/1000.0                             // Total synchronizing power(kW)
T_s_b = P_s_b_total/(2*%pi*n)                                   // Synchronizing torque(N-m)

// Results
disp("PART II - EXAMPLE : 11.2 : SOLUTION :-")
printf("\nCase(a): Synchronizing power for no-load, P_s = %.1f kW", P_s_a_total_kw)
printf("\n         Synchronizing torque for no-load, T_s = %.f N-m", T_s_a)
printf("\nCase(b): Synchronizing power at full-load, P_s = %.1f kW", P_s_b_total_kw)
printf("\n         Synchronizing torque at full-load, T_s = %.f N-m \n", T_s_b)
printf("\nNOTE: ERROR: Calculation mistakes in textbook")
