clear;
clc;

//page no. 105

h = 100;//ft
d1 = 5;//in
d2 = 8;//in
h1 = 60;// ft
h2 = 10;//ft
h3 = 40;//ft
h4 = 102;//ft
H = 300;//ft
theta = 30;//degrees
gam = 0.43;


V5 = sqrt(h*2*32.2);
Q = V5*0.25*%pi*(d1/12)^2;
V1 = (d1/12)^4 *h;
V2 = h*(d1/d2)^4;
p1 = (h1-V1)*gam;
p2 = -(h2-V2)*2.04*gam;
p3 = (h3-V1)*gam;
p4 = (h4-V1)*gam;
V6 = V5*cos(theta*%pi/180);
e = H - (V6^2)/(2*32.2);
printf('p1 = %.1f psi\n p2 = %.1f in. of Hg vacuum\n p3 = %.1f psi\n p4 = %.1f psi',p1,p2,p3,p4);
printf('\n elevation = %.1f ft',e);

//there are small errors in the answer given in textbook
