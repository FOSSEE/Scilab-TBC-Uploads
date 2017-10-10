// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 2: HEATING AND WELDING

// EXAMPLE : 2.8 :
// Page number 736-737
clear ; clc ; close ; // Clear the work space and console

// Given data
weight = 3000.0       // Weight of steel(kg)
I = 5000.0            // Current(A)
V_arc = 60.0          // Arc voltage(V)
R_t = 0.003           // Resistance of transformer(ohm)
X_t = 0.005           // Reactance of transformer(ohm)
heat_sp = 0.12        // Specific heat of steel
heat_latent = 8.89    // Latent heat of steel(kilo-cal/kg)
t_2 = 1370.0          // Melting point of steel(°C)
t_1 = 18.0            // Initial temperature of steel(°C)
n = 0.6               // Overall efficiency

// Calculations
R_arc_phase = V_arc/I                           // Arc resistance per phase(ohm)
IR_t = I*R_t                                    // Voltage drop across resistance(V)
IX_t = I*X_t                                    // Voltage drop across reactance(V)
V = ((V_arc+IR_t)**2+IX_t**2)**0.5              // Voltage(V)
PF = (V_arc+IR_t)/V                             // Power factor
heat_kg = (t_2-t_1)*heat_sp+heat_latent         // Amount of heat required per kg of steel(kcal)
heat_total = weight*heat_kg                     // Heat for 3 tonnes(kcal)
heat_actual_kcal = heat_total/n                 // Actual heat required(kcal)
heat_actual = heat_actual_kcal*1.162*10**-3     // Actual heat required(kWh)
P_input = 3*V*I*PF*10**-3                       // Power input(kW)
time = heat_actual/P_input*60                   // Time required(min)
n_elect = 3*V_arc*I/(P_input*1000)*100          // Electrical efficiency(%)

// Results
disp("PART IV - EXAMPLE : 2.8 : SOLUTION :-")
printf("\nTime taken to melt 3 metric tonnes of steel = %.f minutes", time)
printf("\nPower factor of the furnace = %.2f ", PF)
printf("\nElectrical efficiency of the furnace = %.f percent\n", n_elect)
printf("\nNOTE: ERROR: Calculation and substitution mistake in the textbook solution")
