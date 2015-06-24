clc
//Initialization of variables
e=0.8
output=400 //kW
H=150 //m
rho=1000 
g=9.81
f=0.028
l=1250 //m
//calculations
gam=rho*g
inpu=output/e
Q=inpu*10^3 /(2/3 *gam*H)
hl=1/3 *H
d5= f*l*Q^2 /(2*g* %pi/4 * %pi/4 *hl)
d=d5^(1/5)
//results
printf("Smallest diameter of pen stock = %d cm",d*100)
    
