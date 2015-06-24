
// Given:-
// Part(a)
// With values from Table A-23
sT2bar = 185.775                                                                // in kj/(kmol.K)
sT1bar = 191.682                                                                // in kj/(kmol.K)
Rbar = 8.314                                                                    // universal gas constant
M = 28.00                                                                       // molar mass in kg/kmol 
p2 = 40.00                                                                      // in bar
p1 = 100.00                                                                     // in bar
Term1 = 0.21
Term2 = 0.14

// Calculations

S2StarBarMinusS1StarBar = sT2bar-sT1bar-Rbar*log(p2/p1)                    // The change in specific entropy in kj/(kmol.K)
sigmacvdot = (1.00/M)*(S2StarBarMinusS1StarBar-Rbar*(Term2-Term1))
// Result
printf( ' the rate of entropy production in kj/kg.K is:  %.2f', sigmacvdot)

// Part(b)
// From Table A-23,
h2starbar = 6654.00                                                             // in kj/kmol
h1starbar = 8723.00                                                             // in kj/kmol
Tc = 126.00                                                                     // critical temperature in kelvin
Term2 = 0.36
Term1 = 0.5
wcvdot = 50.1                                                                   // from example 11.8

// Calculations
wcvdots = (1.00/M)*(h1starbar-h2starbar-Rbar*Tc*(Term1-Term2))                  // isentropic work in kj/kg
etat = wcvdot/wcvdots                                                           // turbine efficiency

// Result
printf( ' The isentropic turbine efficiency is: %.2f', etat)
