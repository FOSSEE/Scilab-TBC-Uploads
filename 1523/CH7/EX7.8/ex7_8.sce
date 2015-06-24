// Graph Theory : example 7.8 :(pg 7.19 & 7.20)
//Complete Incidence Matrix Aa
printf("\nAa=");
disp(Aa=[1 0 -1 1;-1 1 0 0;0 -1 1 -1]);
// Reduced Incidence matrix A  (by eliminating last row from Aa)
A=[1 0 -1 1;-1 1 0 0];
printf("\nA=");
disp(A=[1 0 -1 1;-1 1 0 0]);
printf("\nNumber of possible trees=|A*A^T|");//A^T=A'= transpose of A
x=(A*A');
disp(x);
printf("\n|A*A^T|=");//determinant of A
disp(det(x));
