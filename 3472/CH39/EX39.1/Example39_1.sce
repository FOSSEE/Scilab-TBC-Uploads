// A Texbook on POWER SYSTEM ENGINEERING
// A.Chakrabarti, M.L.Soni, P.V.Gupta, U.S.Bhatnagar
// DHANPAT RAI & Co.
// SECOND EDITION 

// PART IV : UTILIZATION AND TRACTION
// CHAPTER 1: INDUSTRIAL APPLICATIONS OF ELECTRIC MOTORS

// EXAMPLE : 1.1 :
// Page number 676
clear ; clc ; close ; // Clear the work space and console

// Given data
capital_cost_group = 8000.0       // Capital cost of group drive(Rs)
n_single = 5.0                    // Number of individual drive
capital_cost_single = 2500.0      // Capital cost of individual drive(Rs)
energy_cons_group = 40000.0       // Annual energy consumption of group drive(kWh)
energy_cons_single = 30000.0      // Annual energy consumption of group drive(kWh)
cost_energy = 8.0/100             // Cost of energy per kWh(Rs)
dmo_group = 12.0                  // Depreciation,maintenance & other fixed charges for group drive(%)
dmo_single = 18.0                 // Depreciation,maintenance & other fixed charges for individual drive(%)

// Calculations
// Case(a)
annual_cost_energy_a = energy_cons_group*cost_energy   // Annual cost of energy(Rs)
dmo_cost_a = capital_cost_group*dmo_group/100          // Depreciation,maintenance & other fixed charges per year for group drive(Rs)
yearly_cost_a = annual_cost_energy_a+dmo_cost_a        // Total yearly cost(Rs)
// Case(b)
total_cost = capital_cost_single*n_single              // Capital cost of individual drive(Rs)
annual_cost_energy_b = energy_cons_single*cost_energy  // Annual cost of energy(Rs)
dmo_cost_b = total_cost*dmo_single/100                 // Depreciation,maintenance & other fixed charges per year for individual drive(Rs)
yearly_cost_b = annual_cost_energy_b+dmo_cost_b        // Total yearly cost(Rs)

// Results
disp("PART IV - EXAMPLE : 1.1 : SOLUTION :-")
printf("\nTotal annual cost of group drive = Rs. %.f ", yearly_cost_a)
printf("\nTotal annual cost of individual drive = Rs. %.f ", yearly_cost_b)
