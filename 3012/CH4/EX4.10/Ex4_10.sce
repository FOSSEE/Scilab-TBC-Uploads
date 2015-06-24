// Given:-
P1 = 1.0                      // pressure of industrial discharge in bar
T1 = 478.0                    // temperature of industrial discharge in kelvin
m1dot = 69.78                 // mass flow rate of industrial discharge in kg/s
T2 = 400.0                    // temperature of exit products from steam generator in kelvin
P2 = 1.0                      // pressure of exit products from steam generator in bar
P3 = 0.275                    // pressure of water stream entering the generator in Mpa
T3 = 38.9                     // temperature of water stream entering the generator in degree celcius
m3dot = 2.079                 // mass flow rate of water stream entering in kg/s
P5 = 0.07                     // exit pressure of the turbine in bars
x5 = 0.93                     // quality of turbine exit

// Part (a)
m2dot = m1dot                 // since gas and water streams do not mix
m5dot = m3dot                 // --DO

// from table A-22, A-2 and A-3:-
h1 = 480.3                    // in kj/kg
h2 = 400.98                   // in Kj/kg
h3 = 162.9                    // assumption: h3 = hf(T3), units in Kj/kg
hf5 = 161.0                   // in kj/kg
hg5 = 2571.72                 // in kj/kg

// Part (b)
P4 = P3                       // from the assumption that there is no pressure drop for water flowing through the steam generator
T4 = 180                      // in degree celcius

// Calculations:-
h5 = hf5 + x5*(hg5-hf5)
Wcvdot = m1dot*h1 + m3dot*h3 - m2dot*h2 - m5dot*h5
h4 = h3 + (m1dot/m3dot)*(h1 -h2)    // from steady state energy rate balance
                                    // interpolating in table A-4, with these P4 and h4
// Results:-
printf( ' The power developed by the turbine is %.2f kJ/s.',Wcvdot)
printf( ' Turbine inlet temperature is %.2f degree celcius.',T4)
