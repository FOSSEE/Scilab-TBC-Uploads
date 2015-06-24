disp('given matrix is:')
a=[1 2 0 0 0;3 5 0 0 0;0 0 2 0 0;0 0 0 7 8;0 0 0 5 6];
disp(a)
disp('partitioning the matrix into 4 submatrices')
A11=[a(1,1:2);a(2,1:2)]
disp(A11,'A11=')
A22=[a(3,3:5);a(4,3:5);a(5,3:5)]
disp(A22,'A22=')
A12=zeros(2,3)
disp(A12,'A12=')
A21=zeros(3,2)
disp(A21,'A21=')
disp('partitioning A22 into 4 submatrices')
A221=[2]
disp(A221)
B=[A22(2,2:3);A22(3,2:3)]
disp(B,'B=')
disp(zeros(1,2))
disp(zeros(2,1))
disp('determinant of B=')
disp(det(B))
disp('Hence, B is invertible')
disp('inverse of B is')
disp(inv(B))
disp('determinant of inverse of  B is:')
disp(det(inv(B)))
disp('hence the invese of A22 is:')
c=[det(inv(B)) zeros(1,2);0 3 -4;0 -2.5 3.5];
disp(c)