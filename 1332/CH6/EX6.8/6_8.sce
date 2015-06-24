//Example 6.8
//Cholesky's Factorization
//Page no. 243
clc;clear;close;

A=[1,2,3;2,5,8;3,8,22];
U(2,1)=0;U(3,1)=0;U(3,2)=0;
for i=1:3
    for j=1:3
        if(i==j)
            k=0;
            for m=1:i-1
               k=k+U(m,i)^2; 
            end
            U(i,j)=sqrt(A(i,j)-k)
        end
        if(j>i)
            k=0;
            for m=1:i-1
                k=k+U(m,j)*U(m,i);
            end
            U(i,j)=(A(i,j)-k)/U(i,i)
        end
    end
end
disp(U,'Required Matrix (U)=')