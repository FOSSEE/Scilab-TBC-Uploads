//Example 3.13
//Crout Method
//Page no. 67
clc;clear;close;

A=[1,2,3,1;3,1,1,0;2,1,1,0]
for i=1:3
    for j=1:4
        if j==1 then
            M(i,j)=A(i,j)
        elseif i==1
            M(i,j)=A(i,j)/A(1,1)
        elseif j==2
            M(i,j)=A(i,j)-M(1,j)*M(i,j-1)
        elseif i==2
            M(i,j)=(A(i,j)-M(i,1)*M(i-1,j))/M(i,2)
        elseif j==3
            M(i,j)=A(i,j)-(M(i,j-2)*M(i-2,j)+M(i,j-1)*M(i-1,j))
        else
            M(i,j)=(A(i,j)-(M(i,j-3)*M(i-2,j)+M(i,j-2)*M(i-1,j)))/M(i,j-1)
        end
    end
end
disp(M,'M = ')
for i=1:3
    for j=1:4
        if j~=4 then
            U1(i,j)=M(i,j)
        else
            Y(i,1)=M(i,j)
        end
    end
end
U=eye(3,3)
for i=1:3
    for j=1:3
        if j>i then
            U(i,j)=U1(i,j)
        end
    end
end
disp(U,'U = ')
disp(Y,'Y = ')
X=inv(U)*Y
printf('\n\nHence, the solution is : \t')
for i=1:3
    printf('x%i = %i\t\t',i,X(i))
end