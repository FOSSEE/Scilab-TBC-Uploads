clc
//initialisation of variables
R= 1.987 //cal/mol K
T= 25 //C
G1= -193.8 //cal
G2= -54.6 //cal
G3= -253.1 //cal
G4= -253.1 //cal
G5= -54.6 //cal
G6= -309.7 //cal
//CALCULATIONS
G= G1+G2-G3
Ph= 10^(-G*10^3/(2.303*R*(273.2+T)))
G0= G4+G5-G6
Ph1= 10^(-G0*10^3/(2.303*R*(273.2+T)))
p= Ph*100/Ph1
//RESULTS
printf (' range of humidity = %.1f percent',p+0.2)
