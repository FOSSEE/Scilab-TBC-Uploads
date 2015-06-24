//Example 8.4
//Gauss-Seidel Point Iterative Method
//Page no. 278
clc;clear;close;


A=[10,1,0,0,0,-1;1,10,1,0,0,0;2,0,20,1,0,0;0,0,1,10,-1,0;0,3,0,0,30,3;0,0,0,2,-2,20];        //equation matrix
B=[5;10;10;0;0;5]                     //solution matrix
for i=1:6
    for j=1:6
        if(A(j,j)==0)
            for k=1:6
                C(j,k)=A(j,k);
                A(j,k)=A(j+1,k);
                A(j+1,k)=C(j,k);
            end
        end
    end
end
for i=0:7
    X(i+1,1)=i;
end
for i=2:7
    X(1,i)=0;
end
for r=1:7
    for i=1:6
        k1=0;
        for j=1:i-1
            
                k1=k1-A(i,j)*X(r+1,j+1);
            
        end
        k2=0;
        for j=i+1:6
            
                k2=k2-A(i,j)*X(r,j+1);
            
        end
        X(r+1,i+1)=(k1+k2+B(i,1))/A(i,i);
    end
end
printf('   r     ');
for i=1:6
    printf('x%i           ',i);
end
printf('\n    --------------------------------------------------------------------------------')
disp(X)
printf('\n\nAfter 6 iterations exact solution is:\n');
for i=1:6
    printf('x%i=%f     ',i,X(7,i+1));
end
