//page 161
//Example 5.8
clc;
clear;
close;
A = [1 2;3 4];
disp(A,'A = ');
d = det(A);
disp(d,'det A = ','Determinant of A is:');
ad = (det(A) * eye(2,2)) / A;
disp(ad,'adj A = ','Adjoint of A is:');
disp('Thus, A is not invertible as a matrix over the ring of integers.');
disp('But, A can be regarded as a matrix over field of rational numbers.');
in = inv(A);
//The A inverse matrix given in book has a wrong entry of 1/2. It should be -1/2.
disp(in,'inv(A) = ','Then, A is invertible and Inverse of A is:');
//end
