clc
// Example 3.3.py
// Return to Example 1.1, calculate the percentage density change between the given point
// on the wing and the free-stream, assuming compressible flow.

// Variable declaration from example 1.1
rho_1 = 0.002377   // density at sea level (slug/ft^3)
T_1 = 519.0        // temperature at sea level (R)
v_1 = 100.0        // velocity far ahead of the wing (mi/h)
v_2 = 150.0        // velocity at some point on the wing (mi/h)
gamma1 = 1.4        // ratio of specific heat capacity for air
R = 1716.0         // gas constant (ft lbf/slug/R) 

// Calculations 
cp = gamma1*R/(gamma1-1) // specific heat capacity at constant pressure (ft lb/ slug / R)
u_1 = v_1 * 88.0/60.0  // converting v_1 in ft/s
u_2 = v_2 * 88.0/60.0  // converting v_2 in ft/s

T_2 = T_1 + (u_1*u_1 - u_2*u_2)/cp/2.0      // temperature at a point from energy equation  (R)

rho_2_by_rho_1 = ((T_2/T_1)** 1/(gamma1-1))// density ratio from isentropic flow relation

rho_2 = rho_2_by_rho_1 * rho_1              // density at the point (slug/ ft^3)

delrho = rho_1 - rho_2                      // change in density (slug/ ft^3)
fracrho = delrho/rho_1                      // fractional change in density

// Result 
printf("\n Percentage change in density is %.1f",(fracrho*100))

