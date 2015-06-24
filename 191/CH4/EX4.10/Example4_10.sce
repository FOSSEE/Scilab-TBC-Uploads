//Householder Matrix
clc;
clear;
close();
format('v',7);
e = [1;0;0];
x = [-1;1;4];
disp(e , 'e = ');
disp(x , 'x = ');
//considering the positive k according to sign convention 
k = sqrt(x'*x);
disp(k,'k = ');
u = x - k*e;
disp(u,'u = ');
Q = eye(3,3) - 2*u*u'/(u'*u);
disp(Q,'Householder Matrix : ')