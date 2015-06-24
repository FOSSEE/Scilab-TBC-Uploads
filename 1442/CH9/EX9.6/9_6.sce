clc
//initialisation of variables
m1= 0.2 //kg/s
v1= 1.0803 //m^3/kg
P= 200 //kPa
T= 200 //C
s1= 5.8041 //kJ.kg K
s2= 7.5066 //kJ/kg K
h1= 2870.5 //kJ/kg
h2= 2495.9 //kJ/kg
//CALCULATIONS
V1= m1*v1
V2= 0.1*V1
Q= m1*(273.15+T)*(s1-s2)
W= m1*((h1-h2)-(273.15+T)*(s2-s1))
//RESULTS
printf (' volume flow rate into composser = %.4f m^3/s',V1)
printf (' \n volume flow rate out of composser  = %.4f m^3/s',V2) 
printf (' \n Work  = %.1f kW',W)
printf (' \n Heat  = %.1f kW',Q)
