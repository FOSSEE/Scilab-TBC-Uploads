clear;
clc;

//page no.110

sg = 0.82;
p1 = 20;//psia
p2 = 10;//psia
d1 = 6;//in
d2 = 12;//in
del_z = 4;//ft
d = 18.7;//in

h1 = (p1-p2)*144/(sg*62.4) - del_z;
A1 = 0.25*%pi*(d1/12)^2;
A2 = 0.25*%pi*(d2/12)^2;
V2 = sqrt(-2*h1*32.2/(1-(A2/A1)^2));
V1 = (A2/A1)*V2;
Q = A1*V1;
printf('Flow rate = %.2f cfs',Q);

//there is a small error in the answer given in textbook
