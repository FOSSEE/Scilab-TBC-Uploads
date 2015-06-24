// example 3.27
// a) find eigenvalue and eigen vector;
// b) verify inv(S)*A*S is a diagonal matrix;

// 1) 
A=[1 2 -2 ;1 1 1;1 3 -1];

B=[1 0 0;0 1 0; 0 0 1];

 [x,lam] = geigenvectors(A,B);
 
 inv(x)*A*x
 
 // 2) 
A=[3 2 2;2 5 2;2 2 3];

B=[1 0 0;0 1 0; 0 0 1];


 [x,lam] = geigenvectors(A,B);
 
 inv(x)*A*x
 
 