//(4.5)   Air enters a compressor operating at steady state at a pressure of 1 bar, a temperature of 290 K, and a velocity of 6 m/s through an inlet with an area of 0.1 m2. At the exit, the pressure is 7 bar, the temperature is 450 K, and the velocity is 2 m/s. Heat transfer from the compressor to its surroundings occurs at a rate of 180 kJ/min. Employing the ideal gas model, calculate the power input to the compressor, in kW.

//solution

//variable initialization
P1 = 1                               //entry pressure in bar
T1 = 290                             //entry temperature in kelvin 
V1 = 6                               //entry velocity in m/s
A1 = .1                              //inlet area in m^2
P2 = 7                               //exit pressure in bar
T2 = 450                             //exit temperature in kelvin
V2 = 2                               //exit velocity in m/s
Qcvdot = -180                        //heat transfer rate in KJ/min

R = 8.314                            //univsersal gas constant in SI units
v1 = (R*1000*T1)/(28.97*P1*10^5)     //specific volume 
mdot = (A1*V1)/v1                    //mass flow rate 

//from table A-22
h1 = 290.16                         //specific enthalpy in KJ/kg
h2 = 451.8                          //specific enthalpy in Kj/Kg
Wcvdot = Qcvdot/60 + mdot*((h1-h2)+(v1^2-V2^2)/(2*1000));
printf('the power input to the compressor in kw is :\n\tWcvdot = %f',Wcvdot)
