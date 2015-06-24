// Given:-
EfFdot = 100.00                                             // exergy rate of fuel entering the boiler in MW
cF = 1.44                                                   // unit cost of fuel in cents per kw.h
Zbdot = 1080.00                                             // the cost of owning and operating boiler in dollars per hour
Ef1dot = 35.00                                              // exergy rate of exiting steam from the boiler in MW
p1 = 50.00                                                  // pressure of exiting steam from the boiler in bar
T1 = 466.00                                                 // temperature of exiting steam from the boiler in degree celcius
Ztdot = 92.00                                               // the cost of owning and operating turbine in dollars per hour
p2 = 5.00                                                   // pressure of exiting steam from the turbine in bars
T2 = 205.00                                                 // temperature of exiting steam from the turbine in degree celcius
m2dot = 26.15                                               // mass flow rate of exiting steam from the turbine in kg/s
T0 = 298.00                                                 // in kelvin 


// Part(a)
// From table A-4,
h1 = 3353.54                                                // in kj/kg
h2 = 2865.96                                                // in kj/kg
s1 = 6.8773                                                 // in kj/kg.k
s2 = 7.0806                                                 // in kj/kg.k

// Calculations
// From assumption,For each control volume,Qcvdot = 0 and kinetic and potential energy effects are negligible,the mass and energy rate 
// balances for a control volume enclosing the turbine reduce at steady state to give
Wedot = m2dot *(h1-h2)/1000                                 // power in MW
Ef2dot = Ef1dot+m2dot*(h2-h1-T0*(s2-s1))/1000               // the rate exergy exits with the steam in MW

// Results
printf( ' For the turbine,the power is %.2f MW.',Wedot)
printf( ' For the turbine,the rate exergy exits with the steam is %.2f MW.',Ef2dot)

// Part(b)
// Calculations
c1 = cF*(EfFdot/Ef1dot) + ((Zbdot/Ef1dot)/10**3)*100         // unit cost of exiting steam from boiler in cents/Kw.h
c2 = c1                                                      // Assigning the same unit cost to the steam entering and exiting the turbine
ce = c1*((Ef1dot-Ef2dot)/Wedot) + ((Ztdot/Wedot)/10**3)*100  // unit cost of power in cents/kw.h

// Results
printf('The unit costs of the steam exiting the boiler of exergy is: %.2f cents per kw.h.',c1)
printf('The unit costs of the steam exiting the turbine of exergy is: %.2f cents per kw.h.',c2)
printf('Unit cost of power is: %f cents per kw.h.',ce)

// Part(c)
C2dot = (c2*Ef2dot*10**3)/100                                // cost rate for low-pressure steam in dollars per hour
Cedot = (ce*Wedot*10**3)/100                                 // cost rate for power in dollars per hour

// Results
printf( ' The cost rate of the steam exiting the turbine is: %.2f dollars per hour.',C2dot)
printf( ' The cost rate of the power is: %.2f dollars per hour.',Cedot)
