clc 
//initialisation of variables
V= 8 //ft/sec
g= 32.2 //ft/sec^2
d= 10 //ft
l= 2 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
a= sqrt(((l*g*l/V^2)+(d/12)^2)/1.1)
V1= V*d/12
va= sqrt(2*g*0.69)
v1= sqrt(2*g*(l+0.69))
//RESULTS
printf ('total head producing velocity= %.1f ft/sec',v1)
