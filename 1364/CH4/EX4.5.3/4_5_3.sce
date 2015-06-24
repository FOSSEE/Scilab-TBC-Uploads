clc
//initialisation of variables
g= 32.2 //ft/sec^2
h= 5 //ft
Q= 0.6 //ft^3/sec
Cd= 0.6
d= 2//in
Q1= 0.315 //ft^3/sec
h1= 8 //ft
h2= 2 //ft
A= 9 //ft^2
//CALCULATIONS
H= Q1^2/((Cd*%pi*(d/24)^2)^2*2*g)
T= A*2*(sqrt(h1)-sqrt(h2))/(Cd*sqrt(2*g)*60*(d/24)^2)
dhbyt= (Q-Cd*%pi*(d/24)^2*sqrt(2*g*h))*60*12/(%pi*A)
//RESULTS
printf (' depth of the water = %.f ft ',H)
printf (' \n time taken = %.1f min ',T)
printf (' \n rate of rise in water = %.1f in/min ',dhbyt)
