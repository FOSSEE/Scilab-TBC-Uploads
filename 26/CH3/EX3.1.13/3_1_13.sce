disp('the given matrix is:')
A=[4 0 -7 3 -5;0 0 2 0 0;7 3 -6 4 -8;5 0 5 2 -3;0 0 9 -1 2]
disp(A,'A=')
P=A
disp('since row 2 has maximum zeros, using row 2 for cofactor expression')
A(2,:)=[]
A(:,3)=[]
disp('deleting second row and third column from A, we get')
disp(A)
disp(A,'det','det(A)=-2 X')
disp('for the 4X4 matrix obtained, using column 2 for cofactor exansion')
disp('deleting second column and row from the 4X4 matrix')
A(2,:)=[]
A(:,2)=[]
disp(A)
disp(A,'det','det(A)=-2 X 3 X')
disp('-6 X [4 X (4-3)-5 X (6-5)]','=')
disp(-6*det(A),'=')