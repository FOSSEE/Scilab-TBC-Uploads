//page 143
//Example 5.3
clc;
clear;
close;
A = round(rand(2,2) *10 );
disp(A,'A = ');
D1 = A(1,1)*A(2,2);
D2 = - A(1,2)*A(2,1);
disp(D1,'D1(A) = ');
disp(D2,'D2(A) = ');
disp(D1 + D2,'D(A) = D1(A) + D2(A) = ');
disp('That is, D is a 2-linear function.');
//end
