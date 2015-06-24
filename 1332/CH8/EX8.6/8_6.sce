//Example 8.6
//Block Jacobi Method
//Page no. 281
clc;clear;close;

A=[10,1,0,0,0,-1;1,10,1,0,0,0;2,0,20,1,0,0;0,0,1,10,-1,0;0,3,0,0,30,3;0,0,0,2,-2,20];        //equation matrix
B=[5;10;10;0;0;5]                     //solution matrix
disp(B,'B=',A,'A=')
for i=1:3
    for j=1:3
        A11(i,j)=A(i,j);
    end
    B1(i,1)=B(i,1);
end
for i=1:3
    for j=1:3
        A12(i,j)=A(i,j+3);
    end
end
for i=1:3
    for j=1:3
        A21(i,j)=A(i+3,j);
    end
end
for i=1:3
    for j=1:3
        A22(i,j)=A(i+3,j+3);
    end
    B2(i,1)=B(i+3,1);
end
disp(B2,'B2=',B1,'B1=',A22,'A22=',A21,'A21=',A12,'A12=',A11,'A11=');
A11_1=inv(A11);A22_1=inv(A22);
disp(A22_1,'Inverse of A22=',A11_1,'Inverse of A11=')
for i=1:3
    X1(i,1)=0;
    X2(i,1)=0;
end
for r=1:2
    X11=A11_1*(-1*A12*X2+B1);
    X22=A22_1*(-1*A21*X1+B2);
    X1=X11;
    X2=X22;
    disp(X1,'X1=')
    disp(X2,'X2=')
end
for i=1:6
    if(i<4)
        X(i,1)=X1(i,1);
    else
        X(i,1)=X2(i-3,1);
    end
end    
disp(X,'X=')
printf('\n\n\nNote : There is a computation error in calculation of X1(2)')
    
        
    
