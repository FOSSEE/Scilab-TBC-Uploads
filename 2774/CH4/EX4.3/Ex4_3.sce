clc
//initialization of variables
P=400 // pressure in kPa
T1=200 // initial temperature in degree celsius
V1= 2 // initial volume in m^3
Q=3500 // heat added in kJ
v1=0.5342 // specific volume of steam at 200 degree celcius and 0.4 Mpa pressure from table C.3
u1=2647 // specific internal energy in kJ/kg @ pressure = 0.4 MPa
m=V1/v1 // mass in kg
// we have a relation Between u2 and v2 from 1st law of thermodynamics
v2=1.06 // specific volume at state 2 by trial and error and interpolation
V2=m*v2 
u2=((3500-400*(V2-V1))/m)+2647 // specific internal energy for v2=1.06 by trial and error

// on interpolation from steam table at 0.4 MPa we get temperature 
T2=644 // temperature in degree celsius
printf("The temperature for u2= "+string(u2)+" kJ and\n v2 ="+string(v2)+" kg/m^3 is \n"+string(T2)+" degree celsius")
// this numerical is solved by trial and error thus refer to Appendix C
