 //Compute the Frobenius norms of A, B, C and the infinity norms
clearglobal()
clc;
A=[5 9;-2 1]
printf('Matrix A is')
disp(A)
printf('Frobenius Norm of A is')
disp(norm(A,'fro'))
B=[0.1 0;0.2 0.1]
printf('infinite Norm of A is')
disp(norm(A,'inf'))
printf('Matrix B is')
disp(B)
printf('Frobenius Norm of B is')
disp(norm(B,'fro'))
printf('infinite Norm of B is')
disp(norm(B,'inf'))
C=[0.2 0.1;0.1 0]
printf('Matrix C is')
disp(C)
printf('Frobenius Norm of C is')
disp(norm(C,'fro'))
printf('infinite Norm of C is')
disp(norm(C,'inf'))