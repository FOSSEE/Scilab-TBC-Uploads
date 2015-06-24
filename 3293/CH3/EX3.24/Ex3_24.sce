//page 104
//Example 3.24
clc;
clear;
close;
disp('W be the subspace of R^5 spanned by vectors:');
a1 = [2 -2 3 4 -1];
a2 = [-1 1 2 5 2];
a3 = [0 0 -1 -2 3];
a4 = [1 -1 2 3 0];
disp(a1,'a1 = ');
disp(a2,'a2 = ');
disp(a3,'a3 = ');
disp(a4,'a4 = ');
disp('Matrix A by the row vectors a1,a2,a3,a4 will be:');
A = [a1;a2;a3;a4];
disp(A,'A = ');
disp('After Applying row transformations, we get the row reduced echelon matrix R of A;');
T = A;                   //Temporary matrix to store A
//R1 = R1 - R4 and R2 = R2 + R4
A(1,:) = A(1,:) - A(4,:);
A(2,:) = A(2,:) + A(4,:);
//R2 = R2/2
A(2,:) = 1/2 * A(2,:);
//R3 = R3 + R2 and R4 = R4 - R1
A(3,:) = A(3,:) + A(2,:);
A(4,:) = A(4,:) - A(1,:);
//R3 = R3 - R4
A(3,:) = A(3,:) - A(4,:);
//R3 = R3/3
A(3,:) = 1/3 * A(3,:);
//R2 = R2 - R3
A(2,:) = A(2,:) - A(3,:);
//R2 = R2/2 and R4 = R4 - R2 - R3
A(2,:) = 1/2 * A(2,:);
A(4,:) = A(4,:) - A(2,:) - A(3,:);
//R1 = R1 - R2 + R3
A(1,:) = A(1,:) - A(2,:) + A(3,:);
R = A;
A = T;
disp(R,'R = ');
disp('Then we obtain all the linear functionals f by assigning arbitrary values to c2 and c4');
disp('Let c2 = a, c4 = b then c1 = a+b, c3 = -2b, c5 = 0.');
disp('So, W0 consists all linear functionals f of the form');
disp('f(x1,x2,x3,x4,x5) = (a+b)x1 + ax2 -2bx3 + bx4');
disp('Dimension of W0 = 2 and basis {f1,f2} can be found by first taking a = 1, b = 0. Then a = 0,b = 1');
//end
