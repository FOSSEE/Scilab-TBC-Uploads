//Example 11.6
//Rayleigh Quotient
//Page no. 348
clc;close;clear;

A=[10,7,8,7;7,5,6,5;8,6,10,9;7,5,9,10];
q0=[1;1;1;1];
for i=0:4
    X=(A^i)*q0;
    l=(X'*A*X)/(X'*X)
    printf('\nLambda(%i) = %f\n',i+1,l)
end
printf('\n\nDominant Eigenvalue = %f\n\n\n',l)

e=0.001;
for i=1:5
    q1=A*q0;
    a=max(q1)
    for j=1:4
        q2(j)=q1(j)/a;
    end

    q1=q2;
    q0=q1;
end
disp(q2,'Corresponding Eigenvector = ')