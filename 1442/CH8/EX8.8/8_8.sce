clc
//initialisation of variables
m1= 5 //kg
c1= 1.26 //kJ/kg K
m2= 20 //kg
c2= 4.19 //kJ/kg K
T1= 95 //C
T2= 25 //C
//CALCULATIONS
T= (m1*c1*T1+m2*c2*T2)/(m1*c1+m2*c2)
S1= m1*c1*log((273.15+T)/(273.15+T1))
S2= m2*c2*log((273.15+T)/(273.15+T2))
S= S1+S2
//RESULTS
printf (' change in entropy of billet = %.4f kJ/K',S1)
printf (' \n change in entropy of water= %.4f kJ/kg K',S2)
printf (' \n change in entropy of water= %.4f kJ/kg K',S)
