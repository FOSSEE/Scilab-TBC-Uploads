//(4.1)    A feedwater heater operating at steady state has two inlets and one exit. At inlet 1, water vapor enters at p1 = 7 bar, T1=  200C with a mass flow rate of 40 kg/s. At inlet 2, liquid water at p2 = 7 bar, T2 = 40C enters through an area A2 = 25 cm2. Saturated liquid at 7 bar exits at 3 with a volumetric flow rate of 0.06 m3/s. Determine the mass flow rates at inlet 2 and at the exit, in kg/s, and the velocity at inlet 2, in m/s.

//solution

//variable initialization
P1 = 7                                   //pressure at inlet 1 in bar
T1 = 200                                 //temperature at inlet 1 in degree celcius
m1dot = 40                               //mass flow rate in Kg/s at inlet 1
P2 = 7                                   //pressure in bar at inlet 2
T2 = 40                                  //temperature at inlet 2 in degree celcius
A2 = 25                                  //area of inlet 2 in cm^2
P3 = 7                                   //exit pressure in bar 
AV3 = .06                                //volumetric flow rate through exit in m^3/s

//from table A-3
v3 = 1.108*10^(-3)                       //specific volume at the exit in m^3/Kg
m3dot = AV3/v3                           //mass flow rate at the exit
m2dot = m3dot-m1dot                      //mass flow rate at inlet 2
//from table A-2
v2 = 1.0078*10^(-3)                      //specific volume in state 2 in m^3/kg
V2 =m2dot*v2/(A2*10^(-4))
printf('the mass flow rate at the inlet 2 in kg/s is \n\t m2dot = %f',m2dot)
printf('\n the mass flow rate at the exit in kg/s is \n\t m3dot =%f',m3dot)
printf('\n\nthe velocity at inlet 2 in m/s is \n\t V2 = %f',V2)



