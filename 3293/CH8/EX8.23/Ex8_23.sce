//page 301
//Example 8.23
clc;
clear;
close;
disp('Linear transformation from V into W i.e. T is:');
disp('T(x1,x2,x3) = ');
disp('0    -x3    x2');
disp('x3     0   -x1');
disp('-x2   x1    0');
disp('Then, T maps V onto W');
disp('And, putting:');
disp('A = ');
disp('0    -x3    x2');
disp('x3     0   -x1');
disp('-x2   x1    0');
disp('B = ');
disp('0    -y3    y2');
disp('y3     0   -y1');
disp('-y2   y1    0');
disp('we get,');
disp('tr(AB'') = x3*y3 + x2*y2 + x1*y1 + x3*y3 + x2*y2 + x1*y1');
disp('tr(AB'') = 2*(x1*y1 + x2*y2 + x3*y3)');
disp('Thus, (a|b) = (Ta|Tb)');
disp('T is vector space isomorphism');
disp('T contains the standard and orthonormal basis consisting of matrices A1,A2,A3');
A1 = [0 0 0;0 0 -1;0 1 0];
A2 = [0 0 1;0 0 0;-1 0 0];
A3 = [0 -1 0;1 0 0;0 0 0];
disp(A1,'A1 = ');
disp(A2,'A2 = ');
disp(A3,'A3 = ');
//end
