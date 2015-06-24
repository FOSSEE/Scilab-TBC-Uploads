//page 210
//Example 6.12
clc;
clear;
close;
A = round(rand(3,3) * 10);
disp(A,'A = ');
disp('A transpose is:');
disp(A','A'' = ');
if A' == A then
    disp('Since, A'' = A, A is a symmetric matrix.');
else
    disp('Since, A'' is not equal to A, A is not a symmetric matrix.');
end
if A' == -A then
    disp('Since, A'' = -A, A is a skew-symmetric matrix.');
else
    disp('Since, A'' is not equal to -A, A is not a skew-symmetric matrix.');
end
A1 = 1/2*(A + A');
A2 = 1/2*(A - A');
disp('A can be expressed as sum of A1 and A2');
disp('i.e., A = A1 + A2');
disp(A1,'A1 = ');
disp(A2,'A2 = ');
disp(A1 + A2,'A1 + A2 = ');
//end
