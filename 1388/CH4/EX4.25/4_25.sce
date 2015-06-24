clc
//initialisation of variables
P1= 23.756 //atm
T= 25 //C
P2= 1 //atm
P3= 10 //atm
P4= 100 //atm
R= 82.02 //J/mole K
v= 18.07 //ml
//CALCULATIONS
p1= P1/760
p2= 10^(log10(P1)+(v*(P2-p1)/(2.303*R*(273.2+T))))
p3= 10^(log10(P1)+(v*(P3-p1)/(2.303*R*(273.2+T))))
p4= 10^(log10(P1)+(v*(P4-p1)/(2.303*R*(273.2+T))))
x= -(P1-p2)*100/P1
x1= -(P1-p3)*100/P1
x2= -(P1-p4)*100/P1
//RESULTS
printf (' Increase in pressure= %.2f percent',x)
printf (' \n Increase in pressure= %.2f percent',x1)
printf (' \n Increase in pressure= %.1f percent',x2)
