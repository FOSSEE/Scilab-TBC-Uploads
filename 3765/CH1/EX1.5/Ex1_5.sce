clc
// Example 1.5.py
// Consider the air in the pressure vessel in Example 1.2. Let us now heat
// the gas in the vessel. Enough heat is added to increase the temperature
// to 600 K. Calculate the change in entropy of the air inside the vessel.

// Variable declaration from example 1.2
V = 10             // volume of vessel (m^3)
p = 20.0           // pressure (atm)
T = 300.0          // initial temperature (K)
T2 = 600.0         // final temperature (Kelvin)
R = 287.0          // gas constant (J/Kg/K)
gamma1 = 1.4        // ratio of specific heats for air


// Calculations 
p2_by_p = T2/T     // p2/p, at constant volume p/T = constant 

cv = R / (gamma1-1) // specific heat capacity at constant volume (J/Kg K)
cp = cv + R        // specific heat capacity at constant pressure (J/Kg K)

p = p * 101000.0   // units conversion to N/m^2
rho = p/R/T        // from ideal gas equation of state (Kg/m^3)
m = V * rho        // total mass = volume * density (Kg)

//
del_s = cp*log(T2/T) - R*log(p2_by_p) // change in entropy per unit mass (J/ Kg K)
total_del_s = m*del_s                 // total change in entropy (J/K)

// Result 
printf("\n Total change in entropy is %.3e J/K", total_del_s)

