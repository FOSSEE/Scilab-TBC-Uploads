//Example 8.5
//Gauss-Seidel Point Iterative Method
//Page no. 279
clc;clear;close;

A=[2,3,-4,1;1,-2,-5,1;5,-3,1,-4;10,2,-1,2];       //equation matrix
B=[3;2;1;-4];          //solution matrix

//transformation of the equations
for i=1:4
    A1(1,i)=A(4,i);
    B1(1,1)=B(4,1);
end
for i=1:4
    A1(3,i)=A(2,i);
    B1(3,1)=B(2,1);
end
for i=1:4
    A1(2,i)=A(1,i)-A(2,i);
    B1(2,1)=B(1,1)-B(2,1);
end
for i=1:4
    A1(4,i)=2*A(1,i)-A(2,i)+2*A(3,i)-A(4,i);
    B1(4,1)=2*B(1,1)-B(2,1)+2*B(3,1)-B(4,1);
end

//printing of transformed equations
printf('\nTransformed Equations are=\n\n')
for i=1:4
    for j=1:4
        printf('(%ix(%i))',A1(i,j),j);
        if(j<4)
            printf(' + ')
        end
    end
    printf('= %i\n',B1(i,1));
end

for i=1:4
    for j=1:4
        if(A(j,j)==0)
            for k=1:4
                C(j,k)=A(j,k);
                A(j,k)=A(j+1,k);
                A(j+1,k)=C(j,k);
            end
        end
    end
end
for i=0:12
    X(i+1,1)=i;
end
for i=2:5
    X(1,i)=0;
end
for r=1:12
    for i=1:4
        k1=0;
        for j=1:i-1
            
                k1=k1-A1(i,j)*X(r+1,j+1);
            
        end
        k2=0;
        for j=i+1:4
            
                k2=k2-A1(i,j)*X(r,j+1);
            
        end
        X(r+1,i+1)=(k1+k2+B1(i,1))/A1(i,i);
    end
end
printf('\n\n    r     ');
for i=1:4
    printf('x%i           ',i);
end
printf('\n    ------------------------------------------------------')
disp(X)
printf('\n\nAfter 11 iterations exact solution is:\n');
for i=1:4
    printf('x%i=%f     ',i,X(12,i+1));
end
