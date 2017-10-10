clc
m = 3 // Mass flow rate in kg/s
R = 0.287 // Gas constant
T0 = 300 // Ambient temperature in K
k = 0.10 // Fractional pressure drop
printf("\n Example 8.10")
Sgen = m*R*k // Entropy generation
I = Sgen*T0 // Irreversibility Calculation
printf("\n The rate of energy loss because of the pressure drop due to friction %f kW",I)

