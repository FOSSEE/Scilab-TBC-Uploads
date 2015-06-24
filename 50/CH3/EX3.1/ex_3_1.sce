// example 3.1
//Positive definite

A=[12 4 -1;4 7 1;-1 1 6];
//check if the determinant of the leading minors is a positive value-

A1=A(1);
det(A1)
A2=A(1:2,1:2);
det(A2)
A3=A(1:3,1:3);
det(A3)

//we observe that the determinant of the leading minors is a positive ,hence the given matrix A is a positive definite.