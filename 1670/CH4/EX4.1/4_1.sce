//Example 4.1
//Power Method
//Page no. 89
clc;close;clear;

A=[1,3,-1;3,2,4;-1,4,10];
e=0.001;
q0=[0;0;1];
for i=1:5
    q1=A*q0;
    a=max(q1)
    for j=1:3
        q2(j)=q1(j)/a;
    end
    printf('\nq(%i) = %.4f     a = %.4f      Scaled q(%i) = %.3f\n       %.3f                                     %.3f\n       %.3f                                      %i\n\n',i,q1(1),a,i,q2(1),q1(2),q2(2),q1(3),q2(3))
    q1=q2;
    q0=q1;
end
printf('Hence the largest eigenvalue is %.2f with the corresponding eigenvector as %.3f\n                                                                            %.3f\n                                                                              %i',a,q0(1),q0(2),q0(3))