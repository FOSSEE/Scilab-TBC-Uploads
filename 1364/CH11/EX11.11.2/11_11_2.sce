clc
//initialisation of variables
u= 80//ft/sec
d= 1.5 //in
Cu= 0.97
f= 0.007
l= 150//ft
g= 32.2 //ft/sec^2
n= 70 //percent
Ho= -10//ft
w= 62.3 //lb/ft^3
//CALCULATIONS
Q=%pi*d^2*u/(4*144)
ut= u/Cu
H2= ut^2/(2*g)
H1= 5*H2/4
hf= H1/5
D= ((4/%pi)^2*4*f*l*Q^2*0.00237/(hf*2*g))^(1/5)*12*(3.95/1.18)
Ps= w*2*Q*(H1-Ho)*100/(n*550)
//RESULTS
printf (' Diameter = %.2f in',D)
printf (' \n shaft power of the pump = %.1f h.p',Ps)
