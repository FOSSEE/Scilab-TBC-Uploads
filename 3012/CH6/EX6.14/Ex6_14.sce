// Given:-
// From table A-9
h1 = 249.75                                             // in kj/kg
h2 = 294.17                                             // in kj/kg
mdot = 0.07                                             // in kg/s

// From table A-9
s1 = 0.9572                                             // in Kj/Kg.k
h2s = 285.58                                            // in kj/kg

// Calculations
wcvdot = -(mdot*(h2-h1))
eta = (h2s-h1)/(h2-h1)        

// Results
printf( ' The power in  is %f kw',wcvdot);
printf( ' The isentropic efficiency is %.3f',eta)
