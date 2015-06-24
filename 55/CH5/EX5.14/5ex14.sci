A=[1 0 2;2 -1 3;4 1 8];
P=rref([A,eye(3,3)]);
disp(P,'canonical form of matrix A :')
disp('left side of the matrix P is the identity matrix so the right side is the inverse of A') 
inverseA=P(:,4:6)  