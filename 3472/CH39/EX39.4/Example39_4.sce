// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.4 :
// Page number 681-682
clear ; clc ; close ; // Clear the work space and console

// Given data
hp = 30.0      // Power of cage IM(hp)
V = 500.0      // Cage IM voltage(V)
P = 4.0        // Number of poles
f = 50.0       // Frequency(Hz)
I_fl = 33.0    // Full load current(A)
s = 4.0/100    // Slip
Z = 3.5        // Impedance per phase(ohm)
tap = 60.0     // Auto-transformer tap setting(%)

// Calculations
// Case(1)
I_s_1 = 3**0.5*(V/Z)                       // Starting current taken from line(A)
N_s = 120*f/P                              // Speed(rpm)
N_fl = N_s-N_s*s                           // Full load speed of motor(rpm)
T_fl = hp*746*60/(2*%pi*N_fl)              // Full load torque(N-m)
T_s_1 = (I_s_1/I_fl)**2*s*T_fl             // Starting torque(N-m)
// Case(2)
V_ph = V/3**0.5                            // Phase voltage in star(V)
I_s_2 = V_ph/Z                             // Starting current(A/phase)
T_s_2 = (I_s_2/(I_fl/3**0.5))**2*s*T_fl    // Starting torque(N-m)
// Case(3)
V_ph_at = V*tap/(3**0.5*100)               // Phase voltage of auto-transformer secondary(V)
V_impressed = V_ph_at*3**0.5               // Volatage impressed on delta-connected stator(V)
I_s_3 = V_impressed/Z                      // Starting current(A/phase)
I_s_line = 3**0.5*I_s_3                    // Motor starting line current from auto-transformer secondary(A)
I_s_line_3 = tap/100*I_s_line              // Starting current taken from supply(A)
T_s_3 = (I_s_3/(I_fl/3**0.5))**2*s*T_fl    // Starting torque(N-m)
// Case(4)
I_s_4 = 3**0.5*V/Z                         // Starting current from line(A)
T_s_4 = T_fl*s*(I_s_4/I_fl)**2             // Starting torque(N-m)

// Results
disp("PART IV - EXAMPLE : 1.4 : SOLUTION :-")
printf("\nCase(1): Starting torque for direct switching, T_s = %.f N-m", T_s_1)
printf("\n         Starting current taken from supply line for direct switching, I_s = %.f A", I_s_1)
printf("\nCase(2): Starting torque for star-delta starting, T_s = %.f N-m", T_s_2)
printf("\n         Starting current taken from supply line for star-delta starting, I_s = %.1f A per phase", I_s_2)
printf("\nCase(3): Starting torque for auto-transformer starting, T_s = %.f N-m", T_s_3)
printf("\n         Starting current taken from supply line for auto-transformer starting, I_s = %.f A", I_s_line_3)
printf("\nCase(4): Starting torque for series-parallel switch, T_s = %.f N-m", T_s_4)
printf("\n         Starting current taken from supply line for series-parallel switch, I_s = %.f A\n", I_s_4)
printf("\nNOTE: ERROR: Calculation mistakes and more approximation in textbook solution")
