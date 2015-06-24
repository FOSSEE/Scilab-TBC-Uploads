disp('the co-efficient matrix is:')
a=[1 2;5 12]
disp(a)
disp('inverse of the matrix is:')
disp(inv(a))
disp('solution is:')
b=[-1;3];
c=inv(a);
disp(c*b)