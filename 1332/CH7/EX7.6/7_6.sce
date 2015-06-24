//Example 7.6
//Iterative Procedure
//Page no. 265
clc;clear;close;

    A=[3,1,3/2;-5/4,-1/4,-3/4;-1/4,-1/4,-1/4];
disp(A,'Matrix A=');
B=[1,1,3.5;1,3,-3;-2,-3,-4];
disp(B,'Assumed Matrix B=');
e=0.1;

//iterations
E1=e;k=1;
while(E1>=e)
    printf('\n\n\nIteration %i\n',k)
C=B*(2*eye(3,3)-A*B);disp(C,'Matrix C=');
E=A*C-eye(3,3);disp(E,'Matrix E=');
B=C;printf('\nInverse of Matrix A after %i iterations=',k);disp(B);
E1=0;
for i=1:3
    for j=1:3
        E1=E1+E(i,j)^2;
    end
end
E1=sqrt(E1);
k=k+1;
end
