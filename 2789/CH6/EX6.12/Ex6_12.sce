clear;
clc;

//page no. 204

r1 = 3;//in
r2 = 10;//in
beta1 = 120;//degrees
beta2 = 135;//degrees
t = 1;//in
Q = 4;//cfs
gam = 0.434;


V1 = Q*144/(2*%pi*r1);
V_r1 = V1;
V_r2 = Q*144/(2*%pi*r2);
u1 = V1*tan((beta1-90)*%pi/180);
omega = u1/(r1/12);
u2 = omega*(r2/12);
V_t2 = u2 - V_r2/tan((180-beta2)*%pi/180);
T = Q*1.935*(V_t2*(r2/12));
P = T*omega/547.561;//hp
E_P = P*550/(Q*62.4);
V2 = sqrt(V_r2^2 + V_t2^2);
del_p = E_P*gam + (gam/(2*32.2))*(V1^2 - V2^2);

printf('Rotational speed = %.1f rad/sec = %d rpm',omega,omega*60/(2*%pi));
printf('\n T = %d ft-lb,\n P = %.1f hp',T,P);
printf('\n The energy given to each pound of water = %d ft',E_P);
printf('\n The pressure rise = %.1f psi',del_p);

//there are small errors in the answer given in textbook
