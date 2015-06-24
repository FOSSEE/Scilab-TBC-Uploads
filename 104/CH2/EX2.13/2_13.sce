//adjoint of a matrix
A=[1 2;3 4]
i=inv(A)
a=i.*det(A)
disp(a)