
clc 
//initialisation of variables
Cd= 0.62
H= 9 //in
l= 3 //ft
g= 32.2 //t/sec^2
//CALCULATIONS
Q1= Cd*(H*l/12)*sqrt(2*g*3*H/24)
Q2= Cd*2*l*sqrt(2*g)*((H/6)^(3/2)-(H/12)^(3/2))/3
//RESULTS
printf ('Discharge by appropriate formula = %.2f cfs',Q1)
printf ('\n Discharge by exact formula = %.2f cfs',Q2)
