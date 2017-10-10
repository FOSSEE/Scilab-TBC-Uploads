clc
// Given that
d = 25 // Throat diameter in mm
D = 1.2 // Main jet diameter in mm
c_d = 0.85 // Cofficient of discharge for the venturi 
C_d = 0.65 // Cofficient of discharge for fuel jet
h = 6 // Height of the throat from gasoline surface in mm
p_1 = 1 // Ambient pressure in bar
T = 300 // Ambient temperature in K
Ro_f = 760 // Density in kg/m^3
printf("\n Example 20.10\n")
delta_p = h*(10^-3)*Ro_f*9.81
p_2 = p_1-delta_p*(10^-5)
Ro_air = p_1*(10^5)/(287*T)
v  = (2*delta_p/Ro_air)^(1/2)
printf("\n Minimum velocity of air required to start the flow = %f m/s",v)
//The value of  answer is different because of round off error



