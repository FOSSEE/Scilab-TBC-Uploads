
clc 
//initialisation of variables
Cd= 0.6
H1= 8 //ft
H2= 3 //ft
l= 90 //ft
b= 30 //ft
g= 32.2 //ft/sec^2
A= 2 //ft^2
//CALCULATIONS
T1= 2*l*b*(H1^0.5-(H1-H2)^0.5)/(Cd*sqrt(2*g)*A)
T2= (l*b*2/10)*(2/3)*(H1-H2)^1.5/(Cd*sqrt(2*g)*A)
T= T1+T2
//RESULTS
printf ('Time it take to emptify the swimming bath = %.1f sec',T)
