clc
//initialisation of variables
m= 2 //kg
p= 200 //kPa
v2= 0.9596 //m^3/kg
v1= 0.001 //m^3/kg
u2= 2768.8 //kJ/kg
u1= 83.96 //kJ/kg
T= 20 //C
u3= 2576.9 //kJ/kg
s2= 7.2795 //kJ/kg K
s1= 0.2966 //kJ/kg K
Tr= 150 //C
//CALCULATIONS
W= m*p*(v2-v1)
Q= m*(u2-u1)
A= m*((u3-u1)-(273.15+T)*(s2-s1))
Ar= -Q*(1-((273.15+T)/(273.15+Tr)))
Wrep= -(A+Ar)
//RESULTS
printf (' work of the water = %.1f kJ',W)
printf (' \n Heat interaction of the water = %.1f kJ',Q)
printf (' \n maximum work done = %.1f kJ',Wrep)
