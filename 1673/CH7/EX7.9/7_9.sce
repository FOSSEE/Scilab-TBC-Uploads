//ill conditioned linear systems
//example 7.9
//page 276
clc;clear;close;
A=[2 1;2 1.01];
B=[2;2.01];
X=A^-1*B;
A_e=0;
for i=1:2
    for j=1:2
        A_e=A_e+A(i,j)^2;
    end
end
A_e=sqrt(A_e);
inv_A=A^-1;
invA_e=0;
for i=1:2
    for j=1:2
        invA_e=invA_e+inv_A(i,j)^2;
    end
end
invA_e=sqrt(invA_e);
C=A_e*invA_e
de_A=determ(A);
for i=1:2
    s=0;
    for j=1:2
        s=s+A(i,j)^2
    end
    s=sqrt(s);
    k=de_A/s;
end
if k<1 then
    printf(' the fuction is ill conditioned')
end