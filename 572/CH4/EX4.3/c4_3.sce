// (4.3)   Steam enters a converging–diverging nozzle operating at steady state with p1 = 40 bar, T1=  400C, and a velocity of 10 m/s. The steam flows through the nozzle with negligible heat transfer and no significant change in potential energy. At the exit, p2 = 15 bar, and the velocity is 665 m/s. The mass flow rate is 2 kg/s. Determine the exit area of the nozzle, in m2.

//solution

//variable initialization
p1 = 40                                 //entry pressure in bar
T1 = 400                                //entry temperature in degree celcius
V1 = 10                                 //entry velocity in m/s
P2 = 15                                 //exit pressure in bar
V2 =665                                 //exit velocity in m/s
mdot = 2                                //mass flow rate in kg/s

//from table A-4
h1 = 3213.6                            //specific enthalpy in in kj/kg

h2 = h1+((V1^2-V2^2)/2)/1000

//from table A-4
v2 = .1627                             //specific volume at the exit in m^3/kg
A2 = mdot*v2/V2
printf('the exit area of the nozzle in m^2 is \n\t A2 = %e',A2)