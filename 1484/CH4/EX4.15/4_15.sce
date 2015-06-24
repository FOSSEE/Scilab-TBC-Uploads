clc 
//initialisation of variables
A1= 1000 //ft^2
A2= 1000 //ft^2
a= 2 //ft^2
H1= 9 //ft
H2= 4 //ft
Cd=0.8
g= 32.2 //ft/sec^2
//CALCULATIONS
T= a*1000*(sqrt(H1)-sqrt(H2))/(Cd*a^2*sqrt(2*g))
//RESULTS
printf ('Time it take to reduce the height = %.2f sec',T)
