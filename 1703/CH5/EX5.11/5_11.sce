

clc
//initialisation of variables
Cd= 0.64
g= 32.2 //ft/sec^2
A= 12.5 //ft^2
H= 24.8 //ft
Q= 3200 //cuses
b= 150 //ft
A1= 5*10^6
h= 9 //ft
h1= 6 //in
//CALCULATIONS
N= Q/(Cd*A*sqrt(2*g*H))
H1= (Q/(3.2*b))^(2/3)
ES= (H1-(h1/12))*A1*h
//RESULTS
printf ('number of siphons = %.f ',N) 
printf ('\n Extra Storage = %.2e ft^3',ES) 
