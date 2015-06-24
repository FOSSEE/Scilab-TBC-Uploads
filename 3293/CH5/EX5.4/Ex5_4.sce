//page 145
//Example 5.4
clc;
clear;
close;
x = poly(0,"x");
A = [x 0 -x^2;0 1 0;1 0 x^3];
disp(A,'A = ');
disp('e1,e2,e3 are the rows of 3*3 identity matrix, then');
T = eye(3,3);
e1 = T(1,:);
e2 = T(2,:);
e3 = T(3,:);
disp(e1,'e1 = ');
disp(e2,'e2 = ');
disp(e3,'e3 = ');
disp('D(A) = D(x*e1 - x^2*e3, e2, e1 + x^3*e3)');
disp('Since, D is linear as a function of each row,');
disp('D(A) = x*D(e1,e2,e1 + x^3*e3) - x^2*D(e3,e2,e1 + x^3*e3)');
disp('D(A) = x*D(e1,e2,e1) + x^4*D(e1,e2,e3) - x^2*D(e3,e2,e1) - x^5*D(e3,e2,e3)');
disp('As D is alternating, So');
disp('D(A) = (x^4 + x^2)*D(e1,e2,e3)');
//end
