//Example 5.44
//Inverse Interpolation using Everett Formula
//Page no. 191
clc;close;clear;
printf(' \tx\td(log(x!)/dx)\t\td2\t    d4\n')
printf('\t----------------------------------------------------')
x=[0.46,-0.0015805620,-0.0000888096,-0.000000396;0.47,0.0080664890,-0.0000872716,-0.0000000383];
h=0.001
for i=1:2
    printf('\n')
    for j=1:4
        printf('\t%g',x(i,j))
    end
end
p(1)=-(x(1,2))/(x(2,2)-x(1,2))
for i=1:2
    p(i+1)=(-x(1,2)-(p(i)^3-p(i))*x(1,3)/6-(-p(i)^3+3*p(i)^2-2*p(i))*x(1,3)/6)/(x(2,2)-x(1,2))
end
for i=1:3
    printf('\n\n p(%i) = %g',i,p(i))
end
x=x(1,1)+p(3)*h
printf('\n\n   x = x0 + ph = %.8g',x);