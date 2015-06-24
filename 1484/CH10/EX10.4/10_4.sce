clc 
//initialisation of variables
g= 32.2 //ft/sec^2
Cd= 0.62
a= 90 //degrees
H1= 14 //in
H2= 8 //in
//CALCULATIONS
Q1= (8/15)*Cd*sqrt(2*g)*tand(a/2)*(H1/12)^(5/2)
Q2= (8/15)*Cd*sqrt(2*g)*tand(a/2)*(H2/12)
Q= Q1-Q2
//RESULTS
printf ('Discharge through notch= %.2f cuses',Q)
