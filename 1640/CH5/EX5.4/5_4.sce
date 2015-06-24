
clc 
//initialisation of variables
d= 6 //in
hf= 7.7 //ft
f= 0.005
l= 1000 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
C= sqrt(2*g/f)
Q= %pi*C*(d/12)^2.5*(hf/1000)^0.5 /8
//RESULTS
printf ('Discharge = %.2f cfs ',Q)
