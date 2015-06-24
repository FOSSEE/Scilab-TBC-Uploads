// Given:-
w1dot = -60.0                // input work rate in KW
h = 0.171                    // heat transfer coefficient,unit in KW/m2 .K
A = 1.0                      // outer surface area of gearbox, unit in m2
Tb = 300.0                   // outer surface temperature in kelvin
Tf = 293.0                   // temperature of the sorrounding

// Calculations
Qdot = -h*A*(Tb-Tf);         // rate of energy transfer by heat
wdot = Qdot;                 // steady state energy equation
w2dot = wdot-w1dot;

// Results
printf( 'The heat transfer rate in KW is:\n\tQdot =  %f',Qdot)
printf( 'The power delivered through output shaft in KW is: = %f',w2dot);
