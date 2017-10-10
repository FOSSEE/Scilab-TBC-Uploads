// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 15: INSULATION CO-ORDINATION

// EXAMPLE : 15.2 :
// Page number 399
clear ; clc ; close ; // Clear the work space and console

// Given data
V_hv = 132.0      // Voltage at the HV side of transformer(kV)
V_lv = 33.0       // Voltage at the LV side of transformer(kV)
V = 860.0         // Insulator allowable voltage(kV)
Z = 400.0         // Line surge impedance(ohm)
BIL = 550.0       // BIL(kV)

// Calculations
V_rating_LA = V_hv*1.1*0.8                 // Voltage rating of LA(kV)
E_a = 351.0                                // Discharge voltage at 5 kA(kV)
I_disc = (2*V-E_a)*1000/Z                  // Discharge current(A)
L_1 = 37.7                                 // Separation distance in current b/w arrester tap and power transformer tap(m)
dist = 11.0                                // Lead length from tap point to ground level(m)
de_dt = 500.0                              // Maximum rate of rise of surge(kV/µ-sec)
Inductance = 1.2                           // Inductance(µH/metre)
di_dt = 5000.0                             // di/dt(A/µ-sec)
lead_drop = Inductance*dist*di_dt/1000     // Drop in the lead(kV)
E_d = E_a+lead_drop                        // (kV)
V_tr_terminal = E_d+2*de_dt*L_1/300        // Voltage at transformer terminals(kV)
E_t = BIL/1.2                              // Highest voltage the transformer is subjected(kV)
L = (E_t-E_a)/(2*de_dt)*300                // Distance at which lightning arrester located from transformer(m)
L_lead = (E_t-E_a*1.1)/(2*de_dt)*300       // Distance at which lightning arrester located from transformer taken 10% lead drop(m)

// Results
disp("PART II - EXAMPLE : 15.2 : SOLUTION :-")
printf("\nRating of L.A = %.1f kV", V_rating_LA)
printf("\nLocation of L.A, L = %.f m", L)
printf("\nLocation of L.A if 10 percent lead drop is considered, L = %.1f m", L_lead)
printf("\nMaximum distance at which a ligtning arrester is usually connected from transformer is %.f-%.f m", L-2,L+3)
