clc 
//initialisation of variables
G= 28.6 //gms
R= 0.08205 //l-atm mole^-1 deg^-1
T= 30 //C
M= 153.8 //gms
v= 20.01 //l
//CAALCULATIONS
p= G*R*(273.1+T)*760/(M*v)
p1= p/(1+(p/760))
//RESULTS
printf ('vapour pressure using ideal gas = %.f mm',p)
printf ('\n vapour pressure using equation = %.f mm',p1)

