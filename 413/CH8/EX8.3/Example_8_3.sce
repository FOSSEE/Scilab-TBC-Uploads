clc
clear
A=[6 -2 1; -2 7 2; 1 2 5]
b=[11 5 -1]
D=[6 0 0; 0 7 0; 0 0 -5]
L=[0 0 0; -2 0 0; 1 2 0]
U=[0 -2 1; 0 0 2; 0 0 0]
DI=inv(D)
printf('For Jacobi method, we need to compute the eigen value of this matrix')
B=DI*(L+U)
disp(B)
T=spec(B)
disp(T)
printf(' Magnitude of Largest eigenvaue is %f',abs(T(2,1)))
printf('\n\nFor Gauss-Seidel method, we need to compute the eigen value of this matrix')
B=inv(L+D)*U
disp(B)
T=spec(B)
disp(T)
printf(' Magnitude of Largest eigenvaue is %f',abs(T(2,1)))