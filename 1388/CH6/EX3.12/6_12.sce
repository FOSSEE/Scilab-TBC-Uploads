clc
//initialisation of variables
T= 298.2 //K
T1= 1000 //K
R= 1.987 //cal/mol K
k= -2.52
G= 34500 //cal
G3= 4.63 //kcal
//CALCULATIONS
G1= -R*T1*2.303*k
G2= ((T*G1/T1)-(G*(T-T1)/T1)-1.5*R*T*2.303*log10(T/T1))/1000
G4= (G2+G3)/2
//RESULTS
printf (' Standard free energy = %.2f kcal mole^-1 ',G4)
