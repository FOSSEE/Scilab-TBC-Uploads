
// Theory and Problems of Thermodynamics
// Chapter 4
// Energy Analysis of Process
// Example 4

clear ;clc;

//Given data
m = 0.1              // mass wet steam in kg
X1 = 0.8             // wet steam quality
P1 = 0.3             // Pressure in MPa  
d = 0.8              // distance upto presence of latches in m
A = 0.1              // Cross sectionla area of cylinder

P1 = P1 * 1e3        // units conversion from MPa to kPa

// at 0.3 MPa
v_f = 0.001073     // Specific volume of vapor in m^3/kg
v_g = 0.6058       // Specific volume of vapor in m^3/kg
h_f = 516.47       // Specific enthalpy of vapor in kJ/kg
h_fg = 2163.8      // Specific enthalpy of vapor in kJ/kg

// Calculations
v1 = X1*v_g + (1-X1)*v_f // Specific volume of vapor in m^3/kg
V1 = v1* m              // Initial Volume of steam in m^3

h1 = h_f + X1*h_fg      // specific enthalpy at at 0.3MPa
H1 = h1*m               // Initial Enthalpy of steam in kJ


// State of stem when piston touches the latches
P2 = P1                 // Pressure of steam when piston touches latch
V2 = d*A                // Volume of steam when piston touches latch
v2 = V2/m               // specific volume when piston touches latch

W12 = P1*(V2 - V1)       // Work done during constant pressure process

// From  superheated steam tables at P = 0.3 MPa and v3 = 0.8 m^3/kg
T2 = 252.3                // Temperature in C
h2 = 2972.28             // specific enthalpy obtained from interpolation
H2 = h2*m                // Enthalpy in kJ

// Energy transfer during constant pressure process
Q12 = H2 - H1           // Energy transferred in kJ

// Constant Volume heating from P2 = 0.3 MPa to P3 = 0.5 MPa
P3 = 0.5                // Final Pressure in MPa
P3 = P3 * 1e3           // Units conversion from MPa to kPa
v3 = v2 
// From  superheated steam tables at P = 0.3 MPa and v3 = 0.8 m^3/kg
T3 = 595.6                // Temperature in C
h3 = 3692.1               // specific enthalpy obtained from interpolation
    
W23 = 0;
Q23 = m*(h3-h2-v2*(P3-P2))
    
W = W12 + W23
Q = Q12 + Q23


// Output Results
mprintf('Work done by the steam = %6.3f kJ',W)
mprintf('\n Energy transferred = %6.2f kJ',Q)
mprintf('\n Final Temperature of Steam = %6.1f `C',T3)




