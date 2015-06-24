clear;
clc;

//page no. 176

G = 10;//cfs
d1 = 12;//in
d2 = 8;//in
p1 = 10;//psi
V = 3;//cuft
theta = 60;//degrees
p2 = 3.43;// psi
w = 187;//lb

V1 = G/(0.25*%pi*(d1/12)^2);
V2 = G/(0.25*%pi*(d2/12)^2);
F1 = 0.25*%pi*(d1^2)*p1;
F2 = 0.25*%pi*d2^2 *p2;
Fx = F1+F2*cos(theta*%pi/180) - G*1.935*(-V2*cos(theta*%pi/180) - V1);
Fz = F2*sin(theta*%pi/180) + w + G*1.935*(V2*sin(theta*%pi/180));
F = sqrt(Fx^2 + Fz^2);
alpha = (180/%pi)*atan(Fz/Fx);

printf('The force on the bend = %d lb at %d degrees with the horizontal',F,alpha);

//there is a small error in the answer given in textbook
