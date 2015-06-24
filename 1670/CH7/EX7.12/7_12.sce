//Example 7.12
//Stirlings Central Difference Derivatives
//Page no. 248
clc;close;clear;
printf('   x\t    y\t    d\t    d2\t    d3\t    d4\n')
printf('------------------------------------------------')
function [x]=f(x1)
    x=0;
    for i=3:6
        x=x+(-1)^(i-1)*(z(x1,i))/((i-2)*h)
    end
endfunction
h=1;
z=[-3,-33;-2,-12;-1,-3;0,0;1,3;2,12;3,33];
for i=3:6
    for j=1:9-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:7
    for j=1:6
        if j==1
            printf('   %g\t    ',z(i,j))
        else
            printf('%i\t    ',z(i,j))
        end
    end
    printf('\n')
end
printf("\n\nf`(-3) = %g\n\nf`(0) = %g",f(1),f(4))