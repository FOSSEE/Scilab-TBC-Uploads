// GIven:-
Tmi = 1200.0                                   // initial temperature of metal in kelvin
cm = 0.42                                      // specific heat of metal in KJ/kg.k
mm = 0.3                                       // mass of metal in kg
Twi = 300.0                                    // initial temperature of water in kelvin
cw = 4.2                                       // specific heat of water in KJ/Kg.k
mw = 9.0                                       // mass of water in kg

// Calculations
// Part(a)
// Solving energy balance equation yields
Tf = (mw*(cw/cm)*Twi+mm*Tmi)/(mw*(cw/cm)+mm)

// Part (b)
// Solving entropy balance equation yields
sigma = mw*cw*log(Tf/Twi)+mm*cm*log(Tf/Tmi)

// Results
printf( ' The final equilibrium temperature of the metal bar and the water is %.2f kelvin.',Tf)
printf( ' The amount of entropy produced is: %.2f kJ/k.',sigma)
