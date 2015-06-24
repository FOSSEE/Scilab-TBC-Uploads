disp('Matrix A=')
a=[sqrt(3) -1;1 sqrt(3)]
disp(a)
disp('Eigenvalues of A are:')
eig=spec(a)
disp(eig)
disp('The scale factor associated with the transformation x to Ax is:')
disp(abs(eig(1,1)))