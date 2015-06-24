//single value decommposition 
//example 7.18
//page 292
clc;clear;close;
A=[1 2;1 1;1 3];
A1=A'*A;
x=poly(0,'x');
A1(1,1)=A1(1,1)-x; 
A1(2,2)=A1(2,2)-x;
de_A1=det(A1);
C=roots(de_A1);
printf( ' eigen values are %0.2f  %0.2f\n\n',C(1),C(2));
X1=[0.4033;0.9166];
X2=[0.9166;-0.4033];
Y1=(A*X1)/sqrt(C(1));
Y2=(A*X2)/sqrt(C(2));
printf(' singular decomposition of A is given by \n\n');
D1=[Y1(1) Y2(1);Y1(2) Y2(2);Y1(3) Y2(3)];
D2=[sqrt(C(1)) 0;0,sqrt(C(2))];
D3=[X1(1) X2(1);X1(2) X2(2)];
for i=1:3
    for j=1:2
        printf('%0.4f   ',D1(i,j))
    end
    printf('\n')
end
printf('\n\n')
for i=1:2
    for j=1:2
        printf('%0.4f   ',D2(i,j))
    end
    printf('\n')
end
printf('\n\n');
for i=1:2
    for j=1:2
        printf('%0.4f   ',D3(i,j))
    end
    printf('\n')
end
