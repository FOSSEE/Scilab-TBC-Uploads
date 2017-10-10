clc
// Example 3.10.py
// In example 3.9, how much heat per unit mass must be added to choke the flow//


// Variable declaration from example 3.9
To1 = 840              // upstream total temperature (in K)
M1 = 3.0               // upstream mach number
To1_by_Tostar = 0.6540 // To1/Tostar from Table A3
cp = 1004.5            // specific heat at constant pressure for air (in J/Kg K)

// Calculations 
Tostar = To1 / To1_by_Tostar // Tostar = To1 * Tostar/To1 (in K)

M2 = 1.0         // for choked flow
To2 = Tostar     // since M2 = 1.0

q = cp * (To2 - To1) // required heat = cp(To2 - To1) (in J/kg)


// Result 
printf("\n Heat require to choke the flow is %.2e J/kg", q)

