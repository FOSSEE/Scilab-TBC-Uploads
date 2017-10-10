// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART II : TRANSMISSION AND DISTRIBUTION
// CHAPTER 7: UNDERGROUND CABLES

// EXAMPLE : 7.9 :
// Page number 215
clear ; clc ; close ; // Clear the work space and console

// Given data
d = 2.5             // Conductor diameter(cm)
D = 6.0             // Sheath diameter(cm)
V_l = 66.0          // Line Voltage(kV)

// Calculations
alpha = (D/d)**(1.0/3)               // α
d_1 = d*alpha                        // Best position of first intersheath(cm)
d_2 = d_1*alpha                      // Best position of second intersheath(cm)
V = V_l/3**0.5*2**0.5                // Peak voltage on core(kV)
V_2 = V/(1+(1/alpha)+(1/alpha**2))   // Peak voltage on second intersheath(kV)
V_1 = (1+(1/alpha))*V_2              // Voltage on first intersheath(kV)
stress_max = 2*V/(d*log(D/d))        // Maximum stress without intersheath(kV/cm)
stress_min = stress_max*d/D          // Minimum stress without intersheath(kV/cm)
g_max = V*3/(1+alpha+alpha**2)       // Maximum stress with intersheath(kV/cm)

// Results
disp("PART II - EXAMPLE : 7.9 : SOLUTION :-")
printf("\nMaximum stress without intersheath = %.2f kV/cm", stress_max)
printf("\nBest position of first intersheath, d_1 = %.2f cm", d_1)
printf("\nBest position of second intersheath, d_2 = %.3f cm", d_2)
printf("\nMaximum stress with intersheath = %.2f kV/cm", g_max)
printf("\nVoltage on the first intersheath, V_1 = %.2f kV", V_1)
printf("\nVoltage on the second intersheath, V_2 = %.2f kV \n", V_2)
printf("\nNOTE: Changes in the obtained answer is due to more precision here") 
