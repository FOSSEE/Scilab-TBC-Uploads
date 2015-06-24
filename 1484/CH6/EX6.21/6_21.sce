clc 
//initialisation of variables
v1= 6.2 //ft/sec
a= 43.52 //ft^2/sec^2
a1= 105.6 //ft^2/sec^2
r= 0.468
r1= 0.87
d= 5 //in
d1= 6 //in
//CALCULATIONS
v2= sqrt(a-r*v1^2)
v3= sqrt(a1-r1*v1^2)
Q1= %pi*(d1/12)^2*60*v2/4
Q2=  %pi*(d/12)^2*60*v3/4
//RESULTS
printf ('Quantity discharged= %.2f cuses',Q1) 
printf ('\n Quantity discharged= %.2f cuses',Q2) 
