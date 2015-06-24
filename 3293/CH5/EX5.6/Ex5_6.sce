//page 158
//Example 5.6
clc;
clear;
close;
disp('Given Matrix:');
A = [1 -1 2 3; 2 2 0 2; 4 1 -1 -1;1 2 3 0];
disp(A,'A = ');
disp('After, Subtracting muliples of row 1 from rows 2 3 4');
disp('R2 = R2 - 2*R1');
A(2,:) = A(2,:) - 2 * A(1,:);
disp('R3 = R3 - 4*R1');
A(3,:) = A(3,:) - 4 * A(1,:);
disp('R4 = R4 - R1');
A(4,:) = A(4,:) - A(1,:);
disp(A,'A = ');
T = A;                  //Temporary matrix to store A
disp('We obtain the same determinant as before.');
disp('Now, applying some more row transformations as:');
disp('R3 = R3 - 5/4 * R2');
T(3,:) = T(3,:) - 5/4 * T(2,:);
disp('R4 = R4 - 3/4 * R2');
T(4,:) = T(4,:) - 3/4 * T(2,:);
B = T;
disp('We get B as:');
disp(B,'B = ');
disp('Now,determinant of A and B will be same');
disp(det(B),'det A = det B = '); 
//end
