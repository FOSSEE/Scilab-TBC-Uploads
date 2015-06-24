clear
clc
//initialisation of variables
D= 2 //ft
f= 0.005
l= 10000 //ft
g= 32.2 //ft/sec^2
H= 1000 //ft
w= 62.4 //lb/ft^3
//CALCULATIONS
d= (2*D^5/(f*l))^0.25
v= sqrt(8*g*H*D^5/(f*l*d^4+4*D^5))
HP= w*%pi*d^2*v^3/(2*g*550*4)
Q= %pi*d^2*(HP/67)/4
//RESULTS
printf ('Quantity flowing = %.f cuses',Q)
