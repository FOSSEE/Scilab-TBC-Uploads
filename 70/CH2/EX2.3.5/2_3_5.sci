//page 93
clear;
close;
clc;
disp('Three columns in R2 cannot be independent.')
A=[1 2 1;1 2 3];
disp(A,'Given matrix:')
[L,U]=lu(A);
disp(U,'U=');
disp('If c3 is 1 ,then back-substitution Uc=0 gives c2=-1,c1=1,With these three weights,the first column minus the second plus the third equals zero ,therefore linearly dependent.')