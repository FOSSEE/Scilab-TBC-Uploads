clc
//initialisation of variables
m= 0.2 //kg/s
v1= 1.0803 //m^3/kg
T= 200 //C
s2= 5.8041 //kJ/kg K
s1= 7.5066 //kJ/kg K
h1= 2328.1 //kJ/kg
h2= 2654.4 //kJ/kg
//CALCULATIONS
V1= m*v1
V2= 0.1*V1
Q= m*(273.15+T)*(s2-s1)
W= Q-m*(h1-h2)
//RESULTS
printf (' volume flow rate into composser = %.4f m^3',V1)
printf (' \n volume flow rate out of composser  = %.4f m^3',V2)
printf (' \n Heat  = %.1f kJ',Q)
printf (' \n Work  = %.1f kJ',W)
