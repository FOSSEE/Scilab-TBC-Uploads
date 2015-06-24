//solution of equations by iteration method
//example 7.14
//page 282
//jacobi's method
clc;clear;close;
C=[3.333;1.5;1.4];
X=[3.333;1.5;1.4];
B=[0 -0.1667 -0.1667;-0.25 0 0.25;-0.2 0.2 0];
for i=1:10
    X1=C+B*X;
    printf('X%d',i);
    for k=1:3
        for l=1:1
            printf(' %f ',X1(k,l))
        end
        printf('\n');
    end
    X=X1;
end
printf(' the solution of the equation is converging at 3  1  1\n\n');
//gauss-seidel method
C=[3.333;1.5;1.4];
X=[3.333;1.5;1.4];
B=[0 -0.1667 -0.1667;-0.25 0 0.25;-0.2 0.2 0];
X1=C+B*X;
x=X1(1,1);y=X1(2,1);z=X1(3,1);
for i=1:5
    x=3.333-0.1667*y-0.1667*z
    y=1.5-0.25*x+0.25*z
    z=1.4-0.2*x+0.2*y
    printf(' the value after %d iteration is : %f\t %f\t %f\t\n\n',i,x,y,z)
end
printf(' again we conclude that roots converges at 3  1  1')