//page 283
//Example 8.13
clc;
clear;
close;
A = rand(2,2);
A(1,:) = A(1,:) + 1; //so b1 is not equal to zero
a = A(1,1);
b = A(1,2);
c = A(2,1);
d = A(2,2);
b1 = A(1,:);
b2 = A(2,:);
disp(A,'A = ');
disp(b1,'b1 = ');
disp(b2,'b2 = ');
disp('Applying the orthogonalization process to b1,b2:');
a1 = [a b];
a2 = (det(A)/(a^2 + b^2))*[-b' a'];
disp(a1,'a1 = ');
disp(a2,'a2 = ');
disp('a2 is not equal to zero if and only if b1 and b2 are linearly independent.');
disp('That is, if determinant of A is non-zero.');
//end
