//eigenvalues and eigenvectors
//example 7.15
//page 285
clc;clear;close
A=[5 0 1;0 -2 0;1 0 5];
x=poly(0,'x');
for i=1:3
    A(i,i)=A(i,i)-x;
end
d=determ(A);
X=roots(d);
printf(' the eigen values are \n\n')
disp(X);
X1=[0;1;0]
X2=[1/sqrt(2);0;-1/sqrt(2)];
X3=[1/sqrt(2);0;1/sqrt(2)];
//after computation the eigen vectors 
printf('the eigen vectors for value %0.2g is',X(3));
disp(X1);
printf('the eigen vectors for value %0.2g is',X(2));
disp(X2);
printf('the eigen vectors for value %0.2g is',X(1));
disp(X3);
