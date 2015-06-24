//Example 16.5
//Non Linear Problem
//Page no. 584
clc;close;clear;

deff('y=f(x)','y=2/(1+x)')
Y=[1,0.75,0.75,0.75,0.5];h=0.25
A=[-2,1,0;1,-2,1;0,1,-2];A_1=inv(A)
disp(A_1,"Inverse of A =",A,"A =")
printf('\nThe Solution of the system is: \n\n Iteration\t  Y0\t\t  Y1\t\t  Y2\t\t  Y3\t\t  Y4\n----------------------------------------------------------------------------------------')
for i=0:6
    printf('\n     %i',i)
    for j=1:5
        if j<4 & i~=0 then
            Y(j+1)=y(j)
        end
        printf('\t\t%.4f',Y(j))
    end
    x=0;
    for j=1:3
        x=x+h
        if j~=2 then
            B(j)=h^2*f(x)*Y(j+1)^2-Y(1+2*(j-1))
        else
            B(j)=h^2*f(x)*Y(j+1)^2
        end
    end
    y=A_1*B
end