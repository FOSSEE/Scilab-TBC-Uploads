//Example 7.9
//Newtons Backward Formula
//Page no. 243
clc;close;clear;
printf('   x\t  y\t  d\t  d2\t  d3\t  d4\t  d5\t  d6\n')
printf('---------------------------------------------------------------')
h=0.1;
deff('y=f2(x)','y=(z(x-2,4)+z(x-3,5)+z(x-4,6))/h^2')
z=[1,7.989;1.1,8.403;1.2,8.781;1.3,9.129;1.4,9.451;1.5,9.750;1.6,10.031];
for i=3:8
    for j=1:9-i
        z(j,i)=z(j+1,i-1)-z(j,i-1)
    end
end
printf('\n')
for i=1:7
    for j=1:8
        if z(i,j)==0 then
            printf(' \t')
        elseif j==1
            printf('   %.1f\t',z(i,j))
        else
            printf('%.3f\t',z(i,j))
        end
    end
    printf('\n')
end

j=6;y1=0;
for i=3:6
    y1=y1+z(j,i)/(i-2)
j=j-1 
end
y1=y1/h;
y2(7)=f2(7);
printf('\n\n dy\n -- = %.10g\n dx',y1)
printf('\n\n\n d2y\n --- = %.5g\n dx2',y2(7))

