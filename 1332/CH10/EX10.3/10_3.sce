//Example 10.3
//Non Linear System of Equation
//Page no. 315
clc;clear;close;
x(1,1)=1;x(1,2)=0;x(1,3)=0;
y(1,1)=0;y(1,2)=2;y(1,3)=2;
printf('Case -->\t\tI\t\t\t\t\II\t\t\t\tIII\n----------------------------------------------------------------------------------------------------------\nIteration\tx\t\ty\t\tx\t\ty\t\tx\t\ty\n\n    0\t\t%f\t%f\t%f\t%f\t%f\t%f\n',x(1,1),y(1,1),x(1,2),y(1,2),x(1,3),y(1,3))
for i=2:9
    printf('    %i\t',i-1)
    for j=1:3
        if j==1 | j==2 then
            x(i,j)=(-y(i-1,j)^2-4*x(i-1,j)^2+8*x(i-1,j)+4)/8
        y(i,j)=(2*y(i-1,j)^2-2*x(i-1,j)+1)/4
        printf('\t%f\t%f',x(i,j),y(i,j))
        end
        if j==3 then
            x(i,j)=(-y(i-1,j)^2-4*x(i-1,j)^2+11*x(i-1,j)+4)/11
        y(i,j)=(-2*y(i-1,j)^2+8*y(i-1,j)-2*x(i-1,j)-1)/4
        printf('\t%f\t%f',x(i,j),y(i,j))
        end
    end
    printf('\n')
end
printf('\n\n\n\nNote : There are computational errors in this example given by the book')