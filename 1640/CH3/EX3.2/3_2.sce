clc 
//initialisation of variables
Ww= 261 //lb/min
a= 1 //in^2
h= 4 //ft
y=  5 //ft
W1= 10.65 //lb
l= 1 //ft
Q= 261 //lb/min
w= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
v= Q*144/(w*60)
F= W1*l/y
v= F*g*60/Q
vth= sqrt(2*g*h)
Cv= v/vth
Q1= Ww/w
Qth= vth*60/144
Cd= Q1/Qth
Cc= Cd/Cv
//RESULTS
printf ('Cd = %.3f  ',Cd)
printf ('\n Cc = %.3f  ',Cc)
