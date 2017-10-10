// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 17: ELECTRIC POWER SUPPLY SYSTEMS

// EXAMPLE : 17.1 :
// Page number 422-423
clear ; clc ; close ; // Clear the work space and console

// Given data
no_phase = 3.0          // Number of phases in ac transmission system
V = 380.0*10**3         // Voltage b/w lines(V)
load = 100.0            // Load(MW)
PF = 0.9                // Power factor
l = 150.0               // Line length(km)
n = 0.92                // Efficiency
r = 0.045               // Resistance(ohm/km/sq.cm)
w_cu_1 = 0.01           // Weight of 1 cm^3 copper(kg)

// Calculations
// Case(i)
P_loss = (1-n)*load                  // Power loss in the line(MW)
I_L = load*10**6/(3**0.5*V*PF)       // Line current(A)
loss_cu = P_loss/no_phase*10**6      // I^2*R loss per conductor(W)
R = loss_cu/I_L**2                   // Resistance per conductor(ohm)
R_km = R/l                           // Resistance per conductor per km(ohm)
area = r/R_km                        // Conductor area(Sq.cm)
volume = area*100.0                  // Volume of copper per km run(cm^3)
W_cu_km = volume*w_cu_1              // Weight of copper per km run(kg)
W_cu = no_phase*l*1000*W_cu_km       // Weight of copper for 3 conductors of 150 km(kg)
// Case(ii)
W_cu_dc = 1.0/2*PF**2*W_cu           // Weight of copper conductor in dc(kg)

// Results
disp("PART II - EXAMPLE : 17.1 : SOLUTION :-")
printf("\nWeight of copper required for a three-phase transmission system = %.f kg", W_cu)
printf("\nWeight of copper required for the d-c transmission system = %.f kg \n", W_cu_dc)
printf("\nNOTE: Changes in the obtained answer from that of textbook is due to more precision")
