clear;
clc;

//page no. 422

d = 3;//in
l = 6;//in
h = 6;//in
T = 60;//degreeF

Cv= 0.99;
A1 = 0.25*%pi*(d/12)^2;
Q = Cv*A1*sqrt(2*32.2*(h/12)*(13.55-1)) /(sqrt(1-0.25^2));
Cv_true = 0.988;
Q_true = Q*Cv_true/Cv;
h_L = 3.8;

printf('Q = %.3f cfs',Q);
printf('\n True Q = %.3f cfs',Q_true);
printf('\n Total head loss is about %.1f ft of water',h_L);

//there are small errors in the answer given in textbook
