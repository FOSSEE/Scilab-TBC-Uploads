disp('to check if 2 is an eigenvalue of matrix A')
a=[3 2;3 8]
disp(a,'A=')
disp('A-2I=')
b=a-2*eye(2,2)
disp(b)
disp('The columns of A are clearly independent,')
disp('hence (A-2I)x=0 has a non trivial solution and 2 is an eigenvalue of matrix A')