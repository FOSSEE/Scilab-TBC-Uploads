
clc 
//initialisation of variables
p= 0.91 //units
u= 0.21 //poise
q= 200 //gallons
h= 40 //ft
l= 200 //ft
w= 62.4 //lb/ft^3
d= 3/4 //in
g=32.2 //ft/s^2
//CALCULATIONS
v= u/(p*(30.5)^2)
Q= q*10/(w*3600*p)
V= Q/(%pi*(d/12)^2/4)
Re= V*(d/12)/v
F= 64/Re
Hf= F*l*V^2/(2*g*(d/12))
Ht= Hf+h
P= w*p*Ht/144
//RESULTS
printf ('Pressure head  = %.1f lb/in^2 ',P)
