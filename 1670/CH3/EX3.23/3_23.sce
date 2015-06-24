//Example 3.23
//Relaxation Method
//Page no. 81
clc;clear;close;

A=[10,-2,-3,-205;-2,10,-2,-154;-2,-1,10,-120]
deff('y=R(i,x,y,z)','y=A(i,1)*x+A(i,2)*y+A(i,3)*z+A(i,4)')
printf('dx\tdy\tdz\tdR1\tdR2\tdR3\n---------------------------------------------')
I=eye(3,3)
for i=1:3
    printf('\n')
    for j=1:3
        printf(' %g\t',I(i,j))
    end
    for j=1:3
        printf('%g\t',A(j,i))
    end
end
printf('\n\n\n\n\n xi\tyi\tzi\tR1\tR2\tR3\n---------------------------------------------\n')
I1=[0,0,0;20,0,0;0,19,0;0,0,18;10,0,0;0,6,0;0,0,2;2,0,0;0,0,1;0,1,0]
for i=1:10
    for j=1:3
        l=0;
        for k=1:i
            l=l+I1(k,j)
        end
        I(i,j)=l
    end
end
X=eye(1,6)-eye(1,6)
for i=1:10
    printf('\n')
    for j=1:3
        printf(' %g\t',I1(i,j))
        X(j)=X(j)+I1(i,j)
    end
    for j=1:3
        printf('%g\t',R(j,I(i,1),I(i,2),I(i,3)))
        if i==10 then
            X(j+3)=X(j+3)+R(j,I(i,1),I(i,2),I(i,3))
        end
    end
end
printf('\n---------------------------------------------\n')
for i=1:6
    printf(' %g\t',X(i))
end
printf('\n\n\nHence the solution is \n\t x = %g\n\t y = %g\n\t z = %g',X(1),X(2),X(3))