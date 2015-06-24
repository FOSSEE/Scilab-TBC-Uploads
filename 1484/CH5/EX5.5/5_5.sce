clc 
//initialisation of variables
h= 9 //in
l= 6 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
H= h/12
Q= sqrt(2*g)*l*(H/12)^1.5*(0.405+(0.00984/0.75))
Q1= 3.33*l*H^1.5
//RESULTS
printf ('Discharge by francis formula= %.2f cuses',Q1)
