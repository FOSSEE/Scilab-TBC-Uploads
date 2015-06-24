// Given:-
m1 = 5.00                                           // initial mass in kg
P1 = 5.00                                           // initial pressure in bar
T1 = 500.00                                         // initial temperature in kelvin
P2 = 1.00                                           // final pressure in bar

// From table A-22
pr1 = 8.411



// Using this value of pr2 and interpolation in table A-22
T2 = 317.00                                         // in kelvin

// Calculations 
pr2 = (P2/P1)*pr1
m2 = (P2/P1)*(T1/T2)*m1

// Results
printf('The amount of mass remaining in the tank  is %f kg',m2)
printf('and its temperature is %f kelvin.',T2);
