// Given:-
// State 1
m1 = 2.0                          // initial mass of gas in tank 1 in kg
T1 = 350.0                        // initial temperature in kelvin in tank1
p1 = 0.7                          // initial pressure in bar in tank 1

// State 2
m2 = 8.0                          // initial mass of gas in tank 2 in kg
T2 = 300.0                        // initial temperature in kelvin in tank 2
p2 = 1.2                          // initial pressure in bar in tank 2
Tf = 315.0                        // final equilibrium temperature in kelvin

// From table A-20
Cv = 0.745                        // in KJ/Kg.k

// Calculations
pf = ((m1+m2)*Tf)/((m1*T1/p1)+(m2*T2/p2)) 
Ui = (m1*Cv*T1)+(m2*Cv*T2)
Uf = (m1+m2)*Cv*Tf
deltaU = Uf-Ui
Q = deltaU

// Results
printf( ' The final equilibrium pressure is %f bar.',pf);
printf( ' The heat transfer for the process is %f KJ.',Q);
