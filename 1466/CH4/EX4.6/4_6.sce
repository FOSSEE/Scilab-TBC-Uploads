
clc
//initialisation of variables
q= 12 //ft^3
H1= 16 //ft
A= 1500 //ft^2
Q= 6 //ft^2/sec
H2= 6 //ft
//CALCULATIONS
k= q/sqrt(H1)
T= -(2*A/(k^2*60))*(Q*log((Q-k*sqrt(H2))/(Q-k*sqrt(H1)))+k*(sqrt(H2)-sqrt(H1)))
//RESULTS
printf (' Time required  to lower the level of water = %.1f min',T)
