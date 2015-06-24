clear;
clc;

//page no. 198

D = 6;//ft
d = 2;//in
V1 = 200;//fps
rpm = 250;
theta = 150;//degrees

u = (rpm/60)*2*%pi*0.5*D;
v1 = V1-u;
v2 = v1;
V_2x = v1*cos(theta*%pi/180) + u;
V_2y = v2*sin(theta*%pi/180);
V2 = sqrt(V_2x^2 + V_2y^2);
Q = 0.25*%pi*(d/12)^2 *V1;
F_x = Q*1.935*(V_2x-V1);
P = F_x*u/550;

printf('The working component of force on fluid = %d lb,\n P = %d hp',F_x,-P);

//thete are small errors in the answers given in textbook
