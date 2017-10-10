clc
P1 = 500 // Initial pressure of steam in kPa
P2 = 100// Final pressure of steam in kPa
T1_ = 520 //Initial temperature of steam in degree Celsius
T2_ = 300 //Final temperature of steam in degree Celsius
cp = 1.005 // Specific heat capacity of steam in kJ/kgK
t0 = 20 // Atmospheric temperature in degree Celsius 
R = 0.287 // Gas constant
Q = -10 // Heat loss to surrounding in kJ/kg
printf("\n Example 8.7")
T1 = T1_+273 //Initial temperature of steam in degree Celsius
T2 = T2_+273 //Final temperature of steam in degree Celsius
S21 = (R*log(P2/P1))-(cp*log(T2/T1))
T0 = t0+273
CA = cp*(T1-T2)-T0*S21 // Change in availability
Wmax = CA // Maximum possible work
W = cp*(T1-T2)+Q // net work
I = Wmax-W // Irreversibility
// Altenatively
Ssystem = -Q/T0
Ssurr = -S21
I1 = T0*(Ssystem+Ssurr)
printf("\n The decrease in availability is %f kJ/kg",CA)
printf("\n The maximum work is %f kJ/kg",Wmax)
printf("\n The irreversibility is %f kJ/kg",I)
printf("\n Alternatively, The irreversibility is %f kJ/kg",I1)

