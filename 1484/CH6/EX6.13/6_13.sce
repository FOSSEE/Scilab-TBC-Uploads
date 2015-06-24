clc 
//initialisation of variables
f= 0.01
l= 2000 //ft
d= 6 //in
g= 32.2 //ft/sec^2
Q= 10 //cuses
//CALUCLATIONS
v= sqrt(2*g*(d/12)*Q/(4*f*l))
Q1= v*%pi*(d/12)^2/4
//RESULTS
printf ('Discharge through the pipe= %.3f cuses',Q1)
