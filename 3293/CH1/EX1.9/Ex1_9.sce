//page 14
//Example 1.9
clear;
close;
clc;
A = [1 -2 1;2 1 1;0 5 -1];
disp(A,'A = ');
disp('Applying row transformations:');
disp('R2 = R2 - 2*R1');
A(2,:) = A(2,:) - 2*A(1,:);
disp(A,'A = ');
disp('R3 = R3 - R2');
A(3,:) = A(3,:) - A(2,:);
disp(A,'A = ');
disp('R2 = 1/5*R2');
A(2,:) = 1/5*A(2,:);
disp(A,'A = ');
disp('R1 = R1 - 2*R2');
A(1,:) = A(1,:) + 2*A(2,:);
disp(A,'A = ');
disp('The condition that the system have a solution is:');
disp('2*y1 - y2 + y3 = 0');
disp('where, y1,y2,y3 are some scalars');
disp('If the condition is satisfied then solutions are obtained by assigning a value c to x3');
disp('Solutions are:');
disp('x2 = 1/5*c + 1/5*(y2 - 2*y1)','x1 = -3/5*c + 1/5*(y1 + 2*y2)');
//end
