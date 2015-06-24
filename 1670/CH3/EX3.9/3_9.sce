//Example 3.9
//Triangularization Method
//Page no. 61
clc;clear;close;

A=[1,2,3;2,5,2;3,1,5];
B=[14;18;20];
printf('A =\n')

U(2,1)=0;U(3,1)=0;U(3,2)=0;
L(1,2)=0;L(1,3)=0;L(2,3)=0;
for i=1:3
    L(i,i)=1
end
for i=1:3
    U(1,i)=A(1,i)
end
L(2,1)=A(1,2)/U(1,1);
for i=2:3
    U(2,i)=A(2,i)-U(1,i)*L(2,1);
end
L(3,1)=A(1,3)/U(1,1);
L(3,2)=(A(3,2)-U(1,2)*L(3,1))/U(2,2);
U(3,3)=A(3,3)-U(1,3)*L(3,1)-U(2,3)*L(3,2);
printf('\n')
for i=1:3
    for j=1:3
        printf('%.2f\t',L(i,j))
    end
    
    if(i==2)
        printf('  *     ')
    else
        printf('\t')
    end
    
    for j=1:3
        printf('%.2f\t',U(i,j))
    end
    printf('\n')
end

    Y=inv(L)*B
    X=inv(U)*Y
printf('\n\nX=')
for i=1:3
    printf('\n   %i',X(i,1))
end