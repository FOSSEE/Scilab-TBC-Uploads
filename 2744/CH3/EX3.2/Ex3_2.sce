clear;
clc;
l = 6;//feet
d = 1;//inches
h = 4;//inches
E = 30*10^6;//lb/in^2
A = 0.25*%pi*d^2;//in^2
P = 50;//lb
p = (P/A)+sqrt((P^2/A^2)+(2*E*P*h)/(A*l*12));
e = p/E;
del_l = e*l*12//inches
printf('Maximum instantaneous stress produced is p = %d lb/in^2',p);
printf('\n Maximum instantaneous extension produced is del_l = %.3f lb/in^2',del_l);

//there is an error in the answer given in text book
