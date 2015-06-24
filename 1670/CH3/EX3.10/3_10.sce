//Example 3.10
//Triangularization Method
//Page no. 62
clc;clear;close;

A=[2,4,-6;1,5,3;1,3,2];
B=[-4;10;5];
printf('A can be factorizaed as follows:\n')
printf('\tL\t\t  *\t\tU\t\t  =\t\tA')
U(2,1)=0;U(3,1)=0;U(3,2)=0;
L(1,2)=0;L(1,3)=0;L(2,3)=0;
for i=1:3
    L(i,i)=1
end
for i=1:3
    U(1,i)=A(1,i)
end
L(2,1)=1/U(1,1);
for i=2:3
    U(2,i)=A(2,i)-U(1,i)*L(2,1);
end
L(3,1)=1/U(1,1);
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
    if(i==2)
        printf('  =     ')
    else
        printf('\t')
    end
    for j=1:3
        printf('%.2f\t',A(i,j))
    end
    printf('\n')
end
printf('\nY=U*X')
    Y=inv(L)*B
    X=inv(U)*Y
printf('\n\nX=')
for i=1:3
    printf('\n   %i',X(i,1))
end