// (4.6) A power washer is being used to clean the siding of a house. Water enters at 20C, 1 atm, with a volumetric flow rate of 0.1 liter/s through a 2.5-cm-diameter hose. A jet of water exits at 23C, 1 atm, with a velocity of 50 m/s at an elevation of 5 m. At steady state, the magnitude of the heat transfer rate from the power unit to the surroundings is 10% of the power input. The water can be considered incompressible, and g = 9.81 m/s2. Determine the power input to the motor, in kW.


//solution

//variable initialization
T1 = 20                               //entry temperature in degree celcius
P1 = 1                                //entry pressure in atm
AV1 = .1                              //entry volumetric flow rate in litre/s
D1 = 2.5                              //diameter of the hose in cm
T2 = 23                               //exit temperature in degree celcius
P2 = 1                                //exit pressure in atm
V2 =50                                //exit velocity in m/s
Z2 = 5                                //elevation in m
g = 9.81                              //acceleration due to gravity in m/s^2

//from table A-2
v = 1.0018*10^(-3)                    //specific volume in m^3/kg

mdot = (AV1/1000)/v                   //mass flow rate in kg/s
V1 = (AV1/1000)/(%pi*(D1/(2*100))^2)  //entry velocity in m/s
c = 4.18                              //from table A-19
deltah = c*(T2-T1)+v*(P2-P1)
Wcvdot = (mdot/.9)*[-deltah+(V1^2-V2^2)/(2*1000)+g*(0-Z2)/1000]
printf('the power input to the motor in KW is :\n\t = %f',Wcvdot)

