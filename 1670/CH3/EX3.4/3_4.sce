//Example 3.4
//Gaussian Elimination Method
//Page no. 55
clc;clear;close;

A=[2,1,1,10;3,2,3,18;1,4,9,16];           //augmented matrix
disp(A,'Augmented Matrix=')
//triangularization
for i=1:3
    for j=1:4
        if i==1 then
            B(i,j)=A(i,j)
        elseif i==2
            B(i,j)=A(i,j)-A(i,1)*A(i-1,j)/A(1,1)
            B(i+1,j)=A(i+1,j)-A(i+1,1)*A(i-1,j)/A(1,1)
        elseif i==3
            if j==1 then
                A=B
            end
            B(i,j)=B(i,j)-A(i,2)*B(i-1,j)/B(2,2)
        end
    end
end

disp(B,'Triangulated Matrix=')
//back substitution
x(3)=B(3,4)/B(3,3);
printf('\nx(3)= %i\n',x(3))
for i=2:-1:1
    k=0
    for j=i+1:3
       k=k+B(i,j)*x(j)
    end
    x(i)=(1/B(i,i))*(B(i,4)-k)
     printf('\nx(%i)= %i\n',i,x(i))
end
