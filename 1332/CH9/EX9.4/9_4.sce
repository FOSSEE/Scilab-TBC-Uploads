//Example 9.4
//QR Decomposition
//Page no. 296
clc;clear;close;

A=[2,1,1;1,3,1;1,1,4];
B=A*A';
disp(B,'AT*A=')
//cholesky factorization to find R
R(2,1)=0;R(3,1)=0;R(3,2)=0;     
for i=1:3
    for j=1:3
        if(i==j)
            k=0;
            for m=1:i-1
               k=k+R(m,i)^2; 
            end
            R(i,j)=sqrt(B(i,j)-k)
        end
        if(j>i)
            k=0;
            for m=1:i-1
                k=k+R(m,j)*R(m,i);
            end
            R(i,j)=(B(i,j)-k)/R(i,i)
        end
    end
end
//cholesky factorization end
disp(R,'Upper Triangular Matrix (R)=')
R_1=inv(R);
disp(R_1,'Inverse of R')
Q=A*R_1;
disp(Q,'Orthogonal Matrix Q=')