//LU Decomposition
clearglobal()
clc;
A=[0 2 0 1 0; 2 2 3 2 -2;  4 -3 0 1 -7; 6 1 -6 -5 6]
[L, U, P]=lu(A)
printf('Matrix is')
disp(A)
printf('L=')
disp(L)
printf('U=')
disp(U)
printf('P=')
disp(P)