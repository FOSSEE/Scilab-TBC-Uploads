//Example 20.6
//Five Point Formula
//Page no. 689
clc;clear;close;

h=0.25;k=0.25;y=1;x=0;
deff('x=f(y)','x=y^3')

for i=1:5
    x=0;
    printf('\n%g\t|',y)
    for j=1:5
        if (i==1 | i==5)
            u(i,j)=f(x)
        elseif j==5
            u(i,j)=f(x)
        else
            u(i,j)=0
        end
        x=x+k;
        printf('%f\t',u(i,j))
    end
    y=y-h
end
printf('\n\t-------------------------------------------------------------------------\n')
x=0;
    for j=1:5
        printf('\t   %g\t',x)
        x=x+k
    end
printf('\n\n\n Itr\t U11\t U12\t U13\t U21\t U22\t U23\t U31\t U32\t U33\n-------------------------------------------------------------------------------\n')

for l=0:20
    y=0;
    printf('  %i\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\n',l,u(4,2),u(4,3),u(4,4),u(3,2),u(3,3),u(3,4),u(2,2),u(2,3),u(2,4))
    for i=4:-1:2
        y=y+k
        for j=2:4
            u1(i,j)=(u(i,j+1)+u(i,j-1)+u(i-1,j)+u(i+1,j)-h^2*y)/4
        end
    end
    for i=4:-1:2
        for j=2:4
            u(i,j)=u1(i,j)
        end
    end
end