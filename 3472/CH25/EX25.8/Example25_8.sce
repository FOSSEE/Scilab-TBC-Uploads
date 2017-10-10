// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 18: POWER DISTRIBUTION SYSTEMS

// EXAMPLE : 18.8 :
// Page number 442-443
clear ; clc ; close ; // Clear the work space and console

// Given data
V = 440.0            // Voltage between outer(V)
I_pos = 210.0        // Ligting load current on positive side(A)
I_neg = 337.0        // Ligting load current on negative side(A)
I_power = 400.0      // Power load current(A)
P_loss = 1.5         // Loss in each balancer machine(kW)

// Calculations
P = I_power*V/1000.0                          // Power(kW)
load_pos = I_pos*V*0.5/1000.0                 // Load on positive side(kW)
load_neg = I_neg*V*0.5/1000.0                 // Load on negative side(kW)
loss_total = 2*P_loss                         // Total loss on rotary balancer set(kW)
load_main = P+load_pos+load_neg+loss_total    // Load on main machine(kW)
I = load_main*1000/V                          // Current(A)
I_M = I-610.0                                 // Current through balancer machine(A)
I_G = 127.0-I_M                               // Current through generator(A)
output_G = I_G*V*0.5/1000.0                   // Output of generator(kW)
input_M = I_M*V*0.5/1000.0                    // Input to balancer machine(kW)

// Results
disp("PART II - EXAMPLE : 18.8 : SOLUTION :-")
printf("\nLoad on the main machine = %.2f kW", load_main)
printf("\nOutput of generator = %.2f kW", output_G)
printf("\nInput to balancer machine = %.2f kW", input_M)
