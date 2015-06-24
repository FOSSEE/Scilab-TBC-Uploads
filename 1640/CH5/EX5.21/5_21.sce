clc 
//initialisation of variables
H= 1000 //lb/in^2
Hf= 100 //lb/in^2
l= 10 //miles
HP= 100
g= 32.2 //ft/sec^2
w= 64.4 //lb/ft^3
f= 0.006
//CALCULATIONS
n= (H-Hf)*100/H
v= Hf*550/((%pi/4)*n*10*144)
r= Hf*144*2*g/(w*4*f*l*5280)
d= (v^2/r)^(1/5)
//RESULTS
printf ('Diameter = %.4f ft ',d)
