// Given:-
T = 373.15                                // temperature in kelvin

// From table A-2

p = 1.014*(10**5)                         // pressure in pascal
vg = 1.673
vf = 1.0435e-3
sg = 7.3549
sf = 1.3069

// Calculations
w = p*(vg-vf)*(10**(-3))
Q = T*(sg-sf)

// Results 
printf( ' The work per unit mass is %.3f KJ/Kg',w)
printf( ' The heat transfer per unit mass is %.2f kj/kg',Q)
