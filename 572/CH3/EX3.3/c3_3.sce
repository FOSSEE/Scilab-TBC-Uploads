// (3.3)  A well-insulated rigid tank having a volume of .25 m3 contains saturated water vapor at 100C. The water is rapidly stirred until the pressure is 1.5 bars. Determine the temperature at the final state, in C, and the work during the process, in kJ.

//solution

//variable initialization
V = .25                       // volume of tank in m3
T1 = 100                      // initial temperature in degree celcius
p2 = 1.5                      // final pressure in bars

v = 1.673                    // specific volume in m3/kg obtained using table A-2
u1 = 2506.5                  // specific internal energy in state 1 in KJ/Kg obtained from table A-2
T2 = 273                     // temperature in state 2 in degree celcius obtained from table A-4
u2 = 2767.8                  // specific internal energy in state 2 in KJ/Kg obtained from table A-4
m = V/v                      // mass of the system in kg
DeltaU = m*(u2-u1)           // change in internal energy in KJ
W = - DeltaU                 // from energy balance
printf('the temperature at the final state in degree celcius is:\n T2 = %f',T2);
printf('\nthe work during the process in KJ is:\n\tW = %f',W);  