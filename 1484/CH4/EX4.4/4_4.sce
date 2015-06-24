clc 
//initialisation of variables
x= 3.2 //ft
d= 8 //ft
W= 5.12 //lb
A= 1/144
H= 4 //ft
g= 32.2 //ft/sec^2
Q= 251.5 //lbs/min
w= 62.4 //lbs/ft^2
//CALCULATIONS
F= W*x/d
v= W*x*g*60/(d*Q)
V= sqrt(2*g*H)
Cv= v/V
Q1= A*V*60*w
Cd= Q/Q1
Cc= Cd/Cv
//RESULTS
printf ('Cc = %.2f ',Cc)
