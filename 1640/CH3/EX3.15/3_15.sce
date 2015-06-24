clc 
//initialisation of variables
Cd= 0.62
B= 2.5 //ft
H2= 8 //ft
H1= 7 //ft
g= 32.2 //ft/sec^2
h= 4 //ft
//CALCULATIONS
Q1= 2*Cd*B*sqrt(2*g)*(H2^(3/2)-H1^(3/2))/3
Q2= Cd*sqrt(2*g)*sqrt(H2)*B*(h-1)
Q= Q1+Q2
//RESULTS
printf ('Total discharge = %.f cfs',Q)
