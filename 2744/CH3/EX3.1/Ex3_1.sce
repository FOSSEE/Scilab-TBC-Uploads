clear;
clc;
d = 3/2;//inches
l = 10;;//feet
P = 8;//tons
E = 13500;//tons/in^2
A = 0.25*%pi*d^2;//in^2
p = 2*P/A;// tons/in^2
e = p/E;
del_l = e*l*12;//inches
W = P*del_l;//inch-ton
printf('The maximum instantaneous stress produced is, p = %.2f tons/in^2',p);
printf('\n The corresponding strain is e = %.6f \n  del_l = %.2f inches',e,del_l);
printf('\n The work done on the rod and stored by it is %.2f inch-ton.',W);

//there is an error in the answer given in text book
