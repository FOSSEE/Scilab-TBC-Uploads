// Given:-
P1 = 1.00                               // pressure of entering air in bar
T1 = 293.00                             // temperature of entering air in kelvin
P2 = 5.00                               // pressure of exit air in bar
n = 1.3
R = 8.314/28.97

// From table A-22
h1 = 293.17                             // in kj/kg
h2 = 426.35                             //  in kj/kg

// Calculations
T2 = T1*((P2/P1)**((n-1)/n))             // in kelvin
wcvdot=((n*R)/(n-1))*(T1-T2)            // in kj/kg
Qcvdot= wcvdot + (h2-h1)                // in kj/kg

// Results
printf( ' The work per unit mass passing through the device is %.2f kJ/kg',wcvdot)
printf( ' The heat transfer per unit mass is %.2f kJ/kg. ',Qcvdot)
