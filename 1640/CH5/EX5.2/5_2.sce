clc 
//initialisation of variables
d= 3 //ft
l= 5280 //ft
v= 3 //ft/sec
f= 0.005
g= 32.2 //ft/sec^2
C= 115
//CALCULATIONS
hf= 4*f*l*v^2/(2*g*v)
m= d/4
hf1= (v/C)^2*4*l/3
//RESULTS
printf ('hf = %.2f ft ',hf)
printf ('\n hf = %.2f ft ',hf1)
