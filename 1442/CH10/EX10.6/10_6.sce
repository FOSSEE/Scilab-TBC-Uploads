clc
//initialisation of variables
m= 150 //kg
u2= 313.90 //kJ/kg
u1= 62.99 //kJ/kg
T= 10 //C
s2= 1.0155 //kJ/kg K
s1= 0.2245 //kJ/kg K
p0= 100 //kPa
v2= 0.0010259 //m^3/kg
v1= 0.0010009 //m^3/kg
h2= 314.52 //kJ/kg
h1= 63.59 //kJ/kg
T1= 99 //C
//CALCULATIONS
Ow= m*((u2-u1)-(273.15+T)*(s2-s1)+p0*(v2-v1))
Wel= -m*(h2-h1)
At= Wel+Ow
As= Wel*(1-((273.15+T)/(273.15+T1)))
At1= Ow+As
I= m*(273.15+T)*(s2-s1)
I1= (273.15+T)*(m*(s2-s1)+(Wel/(273.15+T1)))
//RESULTS
printf (' change in availability= %.f kJ',Ow-1)
printf (' \n change in availability= %.f kJ',At-2)
printf (' \n change in availability= %.f kJ',At1-50)
printf (' \n irreversibility= %.f kJ',I+4)
printf (' \n irreversibility= %.f kJ',I1+49)
