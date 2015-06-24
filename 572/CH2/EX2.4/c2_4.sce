//(2.4) During steady-state operation, a gearbox receives 60 kW through the input shaft and delivers power through the output shaft.For the gearbox as the system, the rate of energy transfer by convection is Qdot = -hA(tb-tf) where h = 0.171 kW/m2.k is the heat transfer coefficient,  A=  1.0 m2 is the outer surface area of the gearbox, Tb = 300k is the temperature at the outer surface, and Tf  293k is the temperature of the surrounding air away from the immediate vicinity of the gearbox. For the gearbox, evaluate the heat transfer rate and the power delivered through the output shaft, each in kW.

//solution

// initializing variables
w1dot = -60                // input work rate in KW
h = .171                   // heat transfer coefficient,unit in KW/m2 .K
A = 1                      // outer surface area of gearbox, unit in m2
Tb = 300                   // outer surface temperature in kelvin
Tf = 293                   // temperature of the sorrounding

Qdot = -h*A*(Tb-Tf);       // rate of energy transfer by heat
wdot = Qdot;                // steady state energy equation
w2dot = wdot-w1dot;

printf('the heat transfer rate in KW is:\n\tQdot = %f',Qdot);
printf('\n\nthe power delivered through output shaft in KW is:\n\tw2dot = %f',w2dot);


