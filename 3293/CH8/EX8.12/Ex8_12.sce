//page 282
//Example 8.12
clc;
clear;
close;
b1 = [3 0 4];
b2 = [-1 0 7];
b3 = [2 9 11];
disp(b1,'b1 = ');
disp(b2,'b2 = ');
disp(b3,'b3 = ');
disp('Applying the Gram-Schmidt process to b1,b2,b3:');
a1 = b1;
disp(a1,'a1 = ');
a2 = b2-((b2*b1')'/25*b1);
disp(a2,'a2 = ');
a3 = b3-((b3*b1')'/25*b1) - ((b3*a2')'/25*a2);
disp(a3,'a3 = ');
disp('{a1,a2,a3} are mutually orthogonal and hence forms orthogonal basis for R^3');
disp('Any arbitrary vector {x1,x2,x3} in R^3 can be expressed as:');
disp('y = {x1,x2,x3} = (3*x1 + 4*x3)/25*a1 + (-4*x1 + 3*x3)/25*a2 + x2/9*a3');
x1 = 1;
x2 = 2;
x3 = 3;
y = (3*x1 + 4*x3)/25*a1 + (-4*x1 + 3*x3)/25*a2 + x2/9*a3;
disp(x1,'x1 = ');
disp(x2,'x2 = ');
disp(x3,'x3 = ');
disp(y,'y = ');
disp('i.e. y = [x1 x2 x3], according to above equation.');
disp('Hence, we get the orthonormal basis as:');
disp(',',1/5*a1);
disp(',',1/5*a2);
disp(1/9*a3);
//end
