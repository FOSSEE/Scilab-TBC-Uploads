clc
// Example 1.2.py
// A pressure vessel that has a volume of 10 m^3 is used to store high
// pressure air for operating a supersonic wind tunnel. If the air pressure 
// and temperature inside the vessel are 20 atm and 300 K, respectively,
// what is the mass of air stored in the vessel//

// Variable declaration
V = 10             // volume of vessel (m^3)
p = 20.0           // pressure (atm)
T = 300            // temperature (K)

R = 287.0          // gas constant (J/Kg/K)

// Calculations 
p = p * 101000.0   // units conversion to N/m^2
rho = p/R/T        // from ideal gas equation of state
m = V * rho        // total mass volume * density


// Result 
printf("\n Total mass stored is %.1f Kg", m)

