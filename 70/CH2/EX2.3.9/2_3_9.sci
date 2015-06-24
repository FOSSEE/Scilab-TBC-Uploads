//page 96
clear;
close;
clc;
disp('These four columns span the column space U,but they are not independent.')
U=[1 3 3 2;0 0 3 1;0 0 0 0];
disp(U,'U=');
disp('The columns that contains pivots (here 1st & 3rd) are a basis for the column space. These columns are independent, and it is easy to see that they span the space.In fact,the column space of U is just the x-y plane withinn R3. C(U) is not the same as the column space C(A) before elimination-but the number of independent columns did not change.')