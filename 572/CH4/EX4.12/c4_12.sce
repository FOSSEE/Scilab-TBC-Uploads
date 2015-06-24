// (4.12)  Steam at a pressure of 15 bar and a temperature of 320C is contained in a large vessel. Connected to the vessel through a valve is a turbine followed by a small initially evacuated tank with a volume of 0.6 m3. When emergency power is required, the valve is opened and the tank fills with steam until the pressure is 15 bar. The temperature in the tank is then 400C. The filling process takes place adiabatically and kinetic and potential energy effects are negligible. Determine the amount of work developed by the turbine, in kJ.


// solution

//variable initialization
Pv = 15                                            //pressure in the vessel in bar
Tv = 320                                           //temperature in the vessel in degree celcius
Vt = .6                                            //volume of a tank in m^3
Tt = 400                                           //temperature in the tank in degree celcius when the tank is full

//since the tank is initially empty
m1 = 0
u1 = 0

//from table A-4, at 15bar and 400 degree celcius
v2 = .203                                         //in m^3/kg
m2 = Vt/v2                                        //mass within the tank at the end of the process in kg
//from table A-4,
hi = 3081.9                                       //in kj/kg
u2 = 2951.3                                       //in kj/kg
deltaUcv = m2*u2-m1*u1
Wcv = hi*(m2-m1)-deltaUcv
printf('the amount of work developed by the turbine in kj is:\n\t Wcv = %f ',Wcv)

