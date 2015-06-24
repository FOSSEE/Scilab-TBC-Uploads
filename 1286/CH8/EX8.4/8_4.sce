clc
//initialisation of variables
R=8400//j/mole
T1=273//k
g=1.66
r=2
//CALCULATIONS
T2=T1*r^(g-1)
w=(R*(T1-T2))/(22400*(g-1))
wi=R*T1*log(1/r)/22400
//results
printf(' \n amount of work done= % 1f J',w)
printf(' \n isothermal work done= % 1f J',wi)
