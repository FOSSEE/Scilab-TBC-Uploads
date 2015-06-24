// Given:-
p1 = 1.0                               // initial pressure in bar
T1 = 295.0                             // initial temperature in kelvin 
p2 = 5.0                               // final pressure in bar
n = 1.3                                // polytropic constant
R = 8314/28.97                         // gas constant for air in SI units

// From table A-22
u2 = 306.53
u1 = 210.49

// Calculations
T2 = T1*(p2/p1)**((n-1)/n)
w = R*(T2-T1)/(1-n)
Q = u2-u1+w/1000

// Results
printf( ' The work done per unit mass is %f KJ/kg.',w/1000)
printf( ' The heat transfer per unit mass is %f KJ/kg.',Q);
