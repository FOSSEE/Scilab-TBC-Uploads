//Example 8.7
//Block Gauss-Seidel Method
//Page no. 283
clc;clear;close;

A=[10,1,0,0,0,-1;1,10,1,0,0,0;2,0,20,1,0,0;0,0,1,10,-1,0;0,3,0,0,30,3;0,0,0,2,-2,20];        //equation matrix
B=[5;10;10;0;0;5]                     //solution matrix
disp(B,'B=',A,'A=')

for i=1:2
    for j=1:2
        A11(i,j)=A(i,j);
    end
    B1(i,1)=B(i,1);
end
for i=1:2
    for j=1:2
        A12(i,j)=A(i,j+2);
    end
    B2(i,1)=B(i+2,1);
end
for i=1:2
    for j=1:2
        A13(i,j)=A(i,j+4);
    end
    B3(i,1)=B(i+4,1);
end
for i=1:2
    for j=1:2
        A21(i,j)=A(i+2,j);
    end
end
for i=1:2
    for j=1:2
        A22(i,j)=A(i+2,j+2);
    end
end
for i=1:2
    for j=1:2
        A23(i,j)=A(i+2,j+4);
    end
end
for i=1:2
    for j=1:2
        A31(i,j)=A(i+4,j);
    end
end
for i=1:2
    for j=1:2
        A32(i,j)=A(i+4,j+2);
    end
end
for i=1:2
    for j=1:2
        A33(i,j)=A(i+4,j+4);
    end
end
disp(B3,'B3=',B2,'B2=',B1,'B1=',A33,'A33=',A32,'A32=',A31,'A31=',A23,'A23=',A22,'A22=',A21,'A21=',A13,'A13=',A12,'A12=',A11,'A11=');
A11_1=inv(A11);A22_1=inv(A22);A33_1=inv(A33);
disp(A33_1,'Inverse of Matrix A33=',A22_1,'Inverse of Matrix A22=',A11_1,'Inverse of Matrix A11=');
for i=1:2
    X1(i,1)=0;
    X2(i,1)=0;
    X3(i,1)=0;
end
for i=1:6
    X(i,1)=i-1;
end
for i=2:7
    X(1,i)=0;
end
for r=1:5
    X11=A11_1*(-1*A12*X2+(-1)*A13*X3+B1);
    X22=A22_1*(-1*A21*X11+(-1)*A23*X3+B2);
    X33=A33_1*(-1*A31*X11+(-1)*A32*X22+B3);
    X1=X11;
    X2=X22;
    X3=X33;
    disp(X3,'X3=',X2,'X2=',X1,'X1=')
    for i=2:7
        if(i<4)
            X(r+1,i)=X1(i-1,1);
        end
        if(i<6 & i>3)
            X(r+1,i)=X2(i-3,1);
        end
        if(i<8 & i>5)
            X(r+1,i)=X3(i-5,1);
        end
    end
end
printf('\n\nIteration');
for i=1:6
    printf('    x%i       ',i);
end
printf('\n    --------------------------------------------------------------------------------')
disp(X)
printf('\n\nAfter 4 iterations exact solution is:\n');
for i=1:6
    printf('x%i=%f     ',i,X(5,i+1));
end