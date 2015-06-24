//Example 6.4
//Gaussian Elimination Method without Pivoting
//Page no. 227
clc;clear;close;

A=[0.3*10^-11,1,0.7;1,1,0.9];           //augmented matrix

//triangularization
for i=1:3
    B(1,i)=A(1,i)
    B(2,i)=A(2,i)-(A(2,1)/A(1,1))*A(1,i)
end
disp(A,'Augmented Matrix=')
disp(B,'Triangulated Matrix=')

//back substitution
x(2)=B(2,3)/B(2,2);
printf('\nx(2)=%f\n',x(2))
for i=1:-1:1
    k=0
    for j=i+1:2
       k=k+B(i,j)*x(j)
    end
    x(i)=(1/B(i,i))*(B(i,3)-k)
     printf('\nx(%i)=%f\n',i,x(i))
end
