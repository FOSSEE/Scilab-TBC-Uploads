clc
//initialisation of variables
T= 2000 //K
R= 1.987 //cal /mol K
G= 31160 //cal
//CALULATIONS
Kp= 10^(-G/(2.303*R*T))
//RESULTS
printf ('Equilibrium constant = %.2e ',Kp  )
