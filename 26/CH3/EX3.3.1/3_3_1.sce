disp('the co-efficient matrix is:')
a=[5 7;2 4]
disp(a,'A=')
disp('the RHS is:')
b=[3;1]
disp(b)
disp('applying cramers rule')
disp('replacing first column of matrix A by b')
A1=[3 7;1 4]
disp(A1,'A1=')
disp('replacing second column of matrix A by b')
A2=[5 3;2 1]
disp(A2,'A2=')
disp('x1=det(A1)/det(A)')
disp((det(A1)/det(a)),'=')
disp('x2=det(A2)/det(A)')
disp((det(A2)/det(a)),'=')