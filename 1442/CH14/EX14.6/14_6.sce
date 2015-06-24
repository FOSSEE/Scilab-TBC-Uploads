clc
//initialisation of variables
m= 100 //kg/s
M= 58 //kg/kmol
v1= 0.164 //m^3/kmol
r= 0.1 //m
v2= 2.675 //m^3/kmol 
T= 175 //C
T1= 80 //C
cp= 1.75 //kJ/kg
R= 8.314 //J/mol K
dh= 3.6 //kJ/kg
dh1= 0.5 //kJ/kg
T2= 425 //K
p2= 0.9 //Mpa
p1= 7.5 //Mpa
ds= 2.7*R 
ds1= 0.4*R
//CAULATIONS
A= %pi*r^2
n= m/M
V1= v1*n/A
V2= v2*n/A
Cp= M*cp
H= -(Cp*(T1-T)+(dh-dh1)*R*T2)
Q= n*(H+((M/1000)*((V2^2-V1^2)/2)))
dS= Cp*log((273.51+T1)/(273.15+T))+R*(-log(p2/p1)+((ds/R)-(ds1/R)))
Wmax= (Q-12)-n*(273.15+27)*(-dS)
I= Wmax
//RESULTS
printf (' entrance velocity= %.f m/s',V1)
printf (' \n exit velocity= %.1f m/s',V2)
printf (' \n Heat= %.1f kW',Q-12)
printf (' \n maximum power= %.1f kW',Wmax-54)
printf (' \n irreversiblity= %.1f kW',I-54)
