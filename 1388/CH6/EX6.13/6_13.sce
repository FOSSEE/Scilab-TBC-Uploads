clc
//initialisation of variables
T= 2000 //K
P= 1 //atm
G= 41438 //cal
R= 1.987 //cal/mol K
T2= 298.2 //K
T1= 2000 //K
H= 43200 //cal
//CALCULATIONS
Kp= 10^(-G/(2.303*R*T2))
Kp1= Kp*10^(H*(T-T2)/(2.303*R*T1*T2))
p= sqrt(Kp1*0.8*0.2)
//RESULTS
printf (' Partial pressure = %.1e atm ',p)
