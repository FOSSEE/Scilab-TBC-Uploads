clc
//initialisation of variables
t= 0.25 //in
a= 30 //degrees
w= 480 //lb/ft^3
h= 2 //in
d= 0.5 //in
l= 6 //in
w1= 62.4 //lb/ft^3
g= 32.2 //ft/sec^2
//CALCULATIONS
W= t*l^2*w/1728
M= w1*%pi*d^2*cosd(a)/(g*4*144)
v= sqrt(W*(l/2)*sind(a)/(M*2*secd(a)))
//RESULTS
printf ('Velocity of jet = %.1f ft/sec',v)
