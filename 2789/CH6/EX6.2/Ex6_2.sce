clear;
clc;

//page no. 178

l1 = 5;//ft
l2 = 2;//ft

V1 = sqrt(2*32.2*(l2-l1)/(1-(l1/l2)^2));
V2 = (l1/l2)*V1;
q = l1*V1;
F1 = 62.4*(l1^2)/2;
F2 = 62.4*(l2^2)/2;
Fx = F1-F2-q*1.935*(V2-V1);
printf('Force = %d lb and direction is in downstream direction',Fx);

//there is an error in the answer given in textbook
