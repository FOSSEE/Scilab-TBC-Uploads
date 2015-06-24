//Example 3.15
//Crout Method
//Page no. 69
clc;clear;close;

A=[1,2,-12,8,27;5,4,7,-2,4;-3,7,9,5,11;6,-12,-8,3,49]
for i=1:4
    for j=1:5
        if j==1 then
            M(i,j)=A(i,j)
        elseif i==1
            M(i,j)=A(i,j)/A(1,1)
        elseif j==2
            M(i,j)=A(i,j)-M(1,j)*M(i,j-1)
        elseif i==2
            M(i,j)=(A(i,j)-M(i,1)*M(i-1,j))/M(i,2)
        elseif j==3
            M(i,j)=A(i,j)-(M(i,j-2)*M(1,j)+M(i,j-1)*M(2,j))
        elseif i==3
            M(i,j)=(A(i,j)-(M(i,1)*M(i-2,j)+M(i,2)*M(i-1,j)))/M(i,3)
        elseif j==4
            M(i,j)=A(i,j)-(M(i,j-2)*M(i-2,j)+M(i,j-1)*M(i-1,j)+M(i,j-3)*M(i-3,j))
        else
            M(i,j)=(A(i,j)-(M(i,j-2)*M(i-1,j)+M(i,j-3)*M(i-2,j)+M(i,j-4)*M(i-3,j)))/M(i,j-1)
        end
    end
end
disp(M,'M = ')
for i=1:4
    for j=1:5
        if j~=5 then
            U1(i,j)=M(i,j)
        else
            Y(i,1)=M(i,j)
        end
    end
end
U=eye(4,4)
for i=1:4
    for j=1:4
        if j>i then
            U(i,j)=U1(i,j)
        end
    end
end
disp(U,'U = ')
disp(Y,'Y = ')
X=inv(U)*Y
printf('\n\nHence, the solution is : \t')
for i=1:4
    printf('x%i = %i  \t',i,X(i))
end