//housrholder's method
//example 7.17
//page 290
clc;clear;close;
A=[1 3 4;3 2 -1;4 -1 1];
S=sqrt(A(1,2)^2+A(1,3)^2);
v2=sqrt([1+(A(1,2)/S)]/2)
v3=A(1,3)/(2*v2*S)
V=[0 v2 v3];
P1=[1 0 0;0 1-2*v2^2 -2*v2*v3;0 -2*v2*v3 1-2*v3^2];
A1=P1*A*P1;
printf(' the reduced matrix is \n\n');
for i=1:3
    for j=1:3
        printf('%0.2f   ',A1(i,j));
    end
    printf('\n');
end