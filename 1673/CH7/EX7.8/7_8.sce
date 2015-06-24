//LU decomposition method
//example 7.8
//page 273
clc;clear;close;
A=[2,3,1;1,2,3;3,1,2];
B=[9;6;8]
L(1,2)=0,L(1,3)=0,L(2,3)=0;
U(2,1)=0,U(3,1)=0,U(3,2)=0;
for i=1:3
    L(i,i)=1;
end
for i=1:3
    U(1,i)=A(1,i);
end
L(2,1)=1/U(1,1);
for i=2:3
    U(2,i)=A(2,i)-U(1,i)*L(2,1);
end
L(3,1)=A(3,1)/U(1,1);
L(3,2)=(A(3,2)-U(1,2)*L(3,1))/U(2,2);
U(3,3)=A(3,3)-U(1,3)*L(3,1)-U(2,3)*L(3,2);
printf('The Matrix A in Triangle form\n \n')
printf('Matrix L\n');
for i=1:3
    for j=1:3
        printf('%.2f  ',L(i,j));
    end
    printf('\n');
end
printf('\n \n');
printf('Matrix U\n');
for i=1:3
    for j=1:3
        printf('%.2f  ',U(i,j));
    end
    printf('\n');
end
Y=L^-1*B;
X=U^-1*Y;
printf(' the values of x=%f,y=%f,z=%f',X(1,1),X(2,1),X(3,1));
