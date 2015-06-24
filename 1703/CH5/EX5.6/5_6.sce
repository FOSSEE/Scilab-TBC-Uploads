
clc
//initialisation of variables
b= 3.5 //ft
H= 2.5 //ft
w= 3 //ft
h= 6 //ft
g= 32.2 //ft/sec^2
//CALCULATIONS
Q= 3.09*b*H^1.5
v= Q/(w*h)
H1= H+(v^2/(2*g))
Q1= 3.09*b*H1^1.5
hc= (Q1^2/(b^2*g))^(1/3)
h2= 0.5*(sqrt(hc^2+8*hc^2)-hc)
dh= h2+b-w
//RESULTS
printf("Flow rate  = %.1f cusecs",Q)
printf("\n Flow rate  = %d cusecs",Q1)
printf ('\n maximum depth of water downstream = %.3f ft',dh) 
printf ('\n Shooting flow depth at hump = %.3f ft',h2) 

