clc
clear
// solution
//initialization of variables
Ra=0.287 // specific gas constant for air
P=100 // pressure of room in kPa
w1=0.0126 // old humidity ratio of example 8.1-
Pg=3.29 // saturation vapour pressure in kPa at 25 *C from table C.1
mv=2.17 // initial mass of water vapour in example 8.1
T=25+273 // temperature after reheat
V=150 // volume of room in m^3 
Pv=1.228 // saturation vapour pressure in kPa @ 10 degree celsius from table C.1
Pa=P-Pv // partial pressure of air
w2=0.622*(Pv/Pa) // new humidity ratio in Kg of water/ Kg of dry air
deltaw=w1-w2 // difference in humidity ratio
ma=Pa*V/(Ra*T) // mass of air
deltamv=deltaw*ma // mass of water vapour condensed
X=deltamv*100/mv // percentage of water vapour condensed
printf("The percentage that condenses is %0.1f %% \n",X)
// AFTER REHEATING
phi=1.608*w2*Pa/Pg
printf("The relative humidity is %0.1f %%",phi*100)

