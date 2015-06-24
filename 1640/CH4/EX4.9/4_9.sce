
clc 
//initialisation of variables
Cd= 0.6
a= 20000 //yd^2
H2= 12 //in
L= 5 //ft
H1= 2 //ft
g=32.2 //ft/s^2
//CALCULATIONS
t= 2*a*9*(L-H1)*((1/sqrt(H2/12))-(1/sqrt(H1)))/(2*60*Cd*sqrt(2*g)*L)
//RESULTS
printf ('time required to lower level of reservoir = %.2f min ',t)
