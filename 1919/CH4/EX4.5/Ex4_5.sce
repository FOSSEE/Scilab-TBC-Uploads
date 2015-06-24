
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 5

clear ;clc;

//Given data
m_f = 1              // mass flow rate in kg/s
X1 = 0.8             // wet steam quality
P1 = 3               // Entering steam Pressure in MPa  
T = 300             // Temperature in C
vel_1 = 10          // entering Velocity in m/s
Z1 = 5              // Initial elevation above the ground level
    //  Data for discharging steam
X2 = 0.85           // Discharge steam quality
P2 = 50             // Discharge steam pressure in kPa
vel_2 = 50          // discharging Velocity in m/s
Z2 = 10             // Final elevation above the ground level
Q = -10             // Energy loss as heat from turbine casing in kJ/s
g = 9.81            // acceleration due to gravity in m/s

// From Super heated steam tables at P = 3.0 MPa and T = 300 c
h1 = 2993.5     // enthalpy in kJ/kg
// From Super heated steam tables at P = 50 kPa
h_f = 340.49     // in kJ/kg
h_fg = 2305.4    // in kJ/kg 
    
h2 = h_f + X2*h_fg

// Power output expression after subjecting

W_s = Q - ((h2 - h1) + (vel_2^2 - vel_1^2)/2*1e-3 + g*(Z2 - Z1)*1e-3 )
//in above equation term 2 and term 3 are multiplied with 1e-3 to convert to kW

del_KE_PE   = (vel_2^2 - vel_1^2)/2*1e-3 + g*(Z2 - Z1)*1e-3

err_KE_PE   = del_KE_PE*100/W_s



// Output Results
mprintf('Turbine output power = %6.2f kW',W_s)
mprintf('\n Error percentage ignored in KE and PE terms = %4.3f ',err_KE_PE)





