//Example 7.13
//Newtons Backward Formula
//Page no. 248
clc;close;clear;
printf('   x\t  y\t  d\t  d2\t  d3\t  d4\t  d5\n')
printf('--------------------------------------------------------')
h=0.5;
deff('y=f2(x)','y=(z(x,4)-z(x,5)+z(x,6))/h^2')
z=[1.5,3.375;2,7;2.5,13.625;3,24;3.5,38.875;4,59];
for i=1:6
    for j=3:7
        z(i,j)=-1
    end
end
for i=3:7
    for j=1:8-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:6
    for j=1:7
        if z(i,j)==-1 then
            printf(' \t')
        elseif j==1
            printf('   %.1f\t',z(i,j))
        else
            printf('%.3f\t',z(i,j))
        end
    end
    printf('\n')
end

j=1;y1=0;
for i=3:6
    y1=y1+(-1)^(i-1)*z(j,i)/(i-2)
end
y1=y1/h;
y2(7)=f2(1);
printf('\n\n f`(1.5)= %g',y1)
printf('\n\n f``(1.5) = %g',y2(7))

