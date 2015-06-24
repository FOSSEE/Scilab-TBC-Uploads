clc
// initialization of variables
T1=400+273 // initial temperature in kelvin
P=600 // pressure in kPa
Tsurr=25+273 // surrounding temperature in K
m=2 // mass of steam in kg

//solution
//please refer to steam table for values
s1=7.708 // specific entropy of steam @ 400 degree celsius and 0.6 MPa
s2=1.9316// specific enropy of condensed water @ 25 degree celsius and 0.6 MPa
delSsys=m*(s2-s1) // entropy change in system i.e of steam

h1=3270 // specific enthalpy of steam @ 400 degree celsius and 0.6 MPa
h2=670.6//specific enropy of condensed water @ 25 degree celsius and 0.6 MPa

Q=m*(h1-h2)// heat transfer at constant pressure
delSsurr=Q/Tsurr // entropy change in surroundings

sigma=delSsys+delSsurr // net entropy change

printf("The net entropy production is %.1f kJ/K",sigma)


