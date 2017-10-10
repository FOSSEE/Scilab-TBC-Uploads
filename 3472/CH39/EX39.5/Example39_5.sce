// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.5 :
// Page number 682
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 400.0      // IM voltage(V)
f = 50.0       // Frequency(Hz)
I_s = 5.0      // Full voltage starting current in terms of full load current
T_s = 2.0      // Full voltage starting torque in terms of full load torque
tap = 65.0     // Auto-tranformer tapping(%)

// Calculations
V_ph = V/3**0.5               // Phase voltage(V)
V_ph_motor = tap/100*V_ph     // Motor phase voltage when auto-transformer is used(V)
I_ph_motor = tap/100*I_s      // Motor phase current in terms of full load current
I_1 = tap/100*I_ph_motor      // Line current from supply in terms of full load current
T = (tap/100)**2*T_s          // Starting torque in terms of full load current
V_applied = V_ph/2**0.5       // Voltage to be applied to develop full-load torque(V)
I_line = V_applied/V_ph*I_s   // Line current in terms of full load current

// Results
disp("PART IV - EXAMPLE : 1.5 : SOLUTION :-")
printf("\nCase(i):   Motor current per phase = %.2f*I_fl ", I_ph_motor)
printf("\nCase(ii):  Current from the supply, I_1 = %.2f*I_fl ", I_1)
printf("\nCase(iii): Starting torque with auto-transformer starter, T = %.3f*T_fl ", T)
printf("\nVoltage to be applied if motor has to develop full-load torque at starting, V = %.f V", V_applied)
printf("\nLine current from the supply to develop full-load torque at starting = %.2f*I_fl ", I_line)
