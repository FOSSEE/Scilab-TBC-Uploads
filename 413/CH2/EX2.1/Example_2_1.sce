//Matrix operations
clearglobal()
clc;
A=[3 -1 4;0 2 -3; 1  1 2]
printf('Matrix is')
disp(A)
printf('Transpose is')
 disp (A')
 printf('Trace of Matrix is')
 disp(trace(A))
 printf('Determinant of Matrix is')
 disp(det(A))
printf('Characteristic equation of Matrix is')
disp(poly(A,"x"))
printf('Eigenvalues  of Matrix is')
 disp(spec(A))