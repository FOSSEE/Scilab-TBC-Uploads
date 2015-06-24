clear;
clc;
l = 10;//feet
d = 5/4;//inches
p = 8;//tons/in^2
E = 13000;//tons/in^2
A = 0.25*%pi*d^2;//in^2
e = p/E;
del_l = e*l*12;//inches
W = 0.5*p^2*A*l*12/E;// inch-ton
h = W*10-del_l;//inches
printf('Instantaneous elongation is del_l = %.3f inches',del_l);
printf('\n Height of the drop is h = %.2f inches',h);
