//Example 6.1
//Gaussian Elimination Method
//Page no. 220
clc;clear;close;

A=[5,10,1,28;1,1,1,6;4,8,3,29];           //augmented matrix

//triangularization
for i=1:4
    B(1,i)=A(1,i)
    B(2,i)=A(2,i)-(A(2,1)/A(1,1))*A(1,i)
    B(3,i)=A(3,i)-(A(3,1)/A(1,1))*A(1,i)
end
disp(A,'Augmented Matrix=')
disp(B,'Triangulated Matrix=')
//back substitution
x(3)=B(3,4)/B(3,3);
printf('\nx(3)=%f\n',x(3))
for i=2:-1:1
    k=0
    for j=i+1:3
       k=k+B(i,j)*x(j)
    end
    x(i)=(1/B(i,i))*(B(i,4)-k)
     printf('\nx(%i)=%f\n',i,x(i))
end
