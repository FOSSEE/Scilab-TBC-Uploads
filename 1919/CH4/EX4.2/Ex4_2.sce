
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 2

clear ;clc;

//Given data
V = 0.3             // Volume of container in m^3
P1 = 0.2            // Initial Pressure in MPa
power = 200         // Power of electric motor in watts
t = 15              // electric motor run time in min
// at 0.2 MPa
h_1 = 2706.7        // Specific volume of vapor in kJ/kg
v_1 = 0.8857        // Specific volume of vapor in m^3/kg

// Units conversion
t = t*60            // From min to seconds
P1 = P1*1e3        // From MPa to kPa

// Calculations
W = power*t         // work done in joules
W = W*1e-3          // units conversion J to kJ

// at 0.2 MPa
u_1 = h_1 - P1*v_1  // internal energy of stream in kJ/kg

m = V/v_1          // Mass of stream in the tank in kg

del_U = W         // Amount of heat energy transferred 

u_2 = del_U/m + u_1
v_2 = v_1

// Final state of stream 
P = 0.4        // Assumed temperature for trail an error method
    // read value of Temperature by interpolation of P assumed
T = 496.92     // From super heated steam tables at P = 0.4MPa, v = 0.8857m^3/kg
h = 3478.39    // at P = 0.4MPa and T = 496.92 C

u = h - P*T     // calculated internal energy from assumed value

// Output Results
mprintf('The final state of steam is: Superheated steam')



