
clc
//initialisation of variables
T= 27 //C
P=33 //lb/in^2
p1= 14.7 //lb/in^2
w= 250 //lb
g= 32.2 //ft/sec^2
Cd= 0.99
r= 1.4
//CALCULATIONS
w1= P*144/(96*(273+T))
d= p1*144/(96*(273+T))
W= d*w/60
d= sqrt(W*4/(Cd*%pi*sqrt(2*g*P*144*(r/(r-1))*w1*(0.528^(2/1.4)-0.528^(2.4/1.4)))))*12
//RESULTS
printf ('Diameter = %.3f in ',d)
