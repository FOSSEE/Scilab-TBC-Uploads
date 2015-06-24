clear all;
clc;
L = 24;//length of the bar in ft
d1 = 9/8;//diameter of the bar in inches
l1 = 6;//in ft
d2 = 1;//in inches
l2 = 12;//in ft
d3 = 5/4;//in inches
l3 = L-l1-l2;//in ft
P = 10000;//axial compression in lb-wt
E = 28*10^6;//modulus of elasticity in lb/in^2
A1 = 0.25*%pi*d1^2;//in in^2
A2 = 0.25*%pi*d2^2;//in in^2
A3 = 0.25*%pi*d3^2;//in in^2
p1 = P/A1 ;//in lb/in^2
e1 = p1/E;
p2 = P/A2 ;//in lb/in^2
e2 = p2/E;
p3 = P/A3 ;//in lb/in^2
e3 = p3/E;
del_l1 = e1*l1*12;//in inches
del_l2 = e2*l2*12;//in inches
del_l3 = e3*l3*12;//in inches
del_l = del_l1+del_l2+del_l3;//total change in length in ft
W = 0.5*P*del_l/12;//energy stored in the bar in ft-lbs
printf('Total change in length of the bar is %.3f inches',del_l);
printf('\n The energy stored in the bar is %.1f ft-lbs',W);
//there is an error in the answer given in textbook.
