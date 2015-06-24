//Example 11.6
//Gaussian Elimination Method
//Page no. 374
clc;clear;close;
A=[-4,1,1,0,-80;1,-4,0,1,-10;1,0,-4,1,-160;0,1,1,-4,-90]          //augmented matrix
disp(A,'Augmented Matrix=')
C=A;
//triangularization
for i=1:4
    for j=1:5
        if i==1 then
            B(i,j)=A(i,j)
        elseif i==2
            B(i,j)=A(i,j)-A(i,1)*A(i-1,j)/A(1,1)
            B(i+1,j)=A(i+1,j)-A(i+1,1)*A(i-1,j)/A(1,1)
            B(i+2,j)=A(i+2,j)-A(i+2,1)*A(i-1,j)/A(1,1)
        elseif i==3
            if j==1 then
                C=B
            else
                B(i,j)=B(i,j)-C(i,2)*B(i-1,j)/B(2,2)
                B(i+1,j)=C(i+1,j)-C(i+1,2)*C(i-1,j)/C(2,2)
            end
        else
            if j==1 then
                C=B
            end
                B(i,j)=B(i,j)-C(i,3)*B(i-1,j)/B(3,3)
        end
    end
end

disp(B,'Triangulated Matrix=')
//back substitution
x(4)=B(4,5)/B(4,4);
printf('\n p(4) = %.2f\n',x(4))
for i=3:-1:1
    k=0
    for j=i+1:4
       k=k+B(i,j)*x(j)
    end
    x(i)=(1/B(i,i))*(B(i,5)-k)
     printf('\n p(%i) = %.2f\n',i,x(i))
end