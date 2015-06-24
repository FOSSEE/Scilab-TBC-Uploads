//page 103
//Example 3.23
clc;
clear;
close;
disp('Matrix represented by given linear functionals on R^4:');
A = [1 2 2 1;0 2 0 1;-2 0 -4 3];
disp(A,'A = ');
T = A;              //Temporary matrix to store A
disp('To find Row reduced echelon matrix of A given by R:')
disp('Applying row transformations on A,we get');
disp('R1 = R1-R2');
A(1,:) = A(1,:) - A(2,:);
disp(A,'A = ');
disp('R3 = R3 + 2*R1');
A(3,:) = A(3,:) + 2*A(1,:);
disp(A,'A = ');
disp('R3 = R3/3');
A(3,:) = 1/3*A(3,:);
disp(A,'A = ');
disp('R2 = R2/2');
A(2,:) = 1/2*A(2,:);
disp(A,'A = ');
disp('R2 = R2 - 1/2*R3');
A(2,:) = A(2,:) - 1/2*A(3,:);
disp(A,'A = ');
R = A;
A = T;
disp('Row reduced echelon matrix of A is:');
disp(R,'R = ');
disp('Therefore,linear functionals g1,g2,g3 span the same subspace of (R^4)* as f1,f2,f3 are given by:');
disp('g1(x1,x2,x3,x4) = x1 + 2*x3');
disp('g1(x1,x2,x3,x4) = x2');
disp('g1(x1,x2,x3,x4) = x4');
disp('The subspace consists of the vectors with');
disp('x1 = -2*x3');
disp('x2 = x4 = 0');
//end
