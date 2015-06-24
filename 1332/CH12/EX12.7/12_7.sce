//Example 12.7
//Double Interpolation
//Page no. 409
clc;close;clear;

x=[0,1,2,3,4];
y=[0,1,2,3,4];
z=[0,1,8,27,64;1,3,11,31,69;4,7,16,37,76;9,13,23,45,85;16,21,32,55,96];
printf('y / x')
for i=1:5
    printf('\t%i',x(i))
end
for i=1:5
    printf('\n %i',y(i))
    for j=1:5
        printf('\t%i',z(j,i))
    end
end
printf('\n\n\n')
for i=1:5
    x=2.5;
    x1=2;x2=3;
    z1(1,i)=z(i,x1+1)+(z(i,x2+1)-z(i,x1+1))*(x-x1)/(x2-x1)
end
printf('Values of z at x=2.5:\n\n  y')
for i=1:5
    printf('\t%i',y(i))
end
printf('\n  z')
for i=1:5
    printf('\t%g',z1(i))
end
y=1.5;
y1=1;y2=2;
z2=z1(y1+1)+(z1(y2+1)-z1(y1+1))*(y-y1)/(y2-y1)
printf('\n\nValue of z at x=2.5 and y=1.5 :  %g',z2)