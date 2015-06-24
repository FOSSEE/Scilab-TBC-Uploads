//Example 11.4
//Power Method
//Page no. 345
clc;close;clear;

A=[1,2;3,4];
e=0.001;
q0=[1;1];
for i=1:5
    q1=A*q0;
    a=max(q1)
    for j=1:2
        q2(j)=q1(j)/a;
    end
    printf('\nq(%i) = %.4f     a = %.4f      Scaled q(%i) = %.4f\n       %.4f                                      %i\n\n',i,q1(1),a,i,q2(1),q1(2),q2(2))
    q1=q2;
    q0=q1;
end
printf('Hence the largest eigenvalue is %.4f with the corresponding eigenvector as %.4f\n                                                                                %i',a,q0(1),q0(2))