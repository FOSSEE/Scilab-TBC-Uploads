//Example No. 14_03
//Eigen Vectors
//Pg No. 473
clear ; close ; clc ;

A = [8 -4 ; 2 2 ] ;
lamd = poly(0,'lamd')
p = det(A - lamd*eye())
root = roots(p)
mprintf('\n The roots are \n lamda1 = %f \n lamda2 = %f \n ',root(1),root(2))
A1 = A - root(1)*eye()
X1 = [-1*A1(1,2)/A1(1,1) ; 1]
disp(X1,'X1 = ')
A2 = A - root(2)*eye()
X2 = [-1*A2(1,2)/A2(1,1) ; 1]
disp(X2,'X2 = ')