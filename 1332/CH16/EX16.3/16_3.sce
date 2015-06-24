//Example 16.3
//Multiple Shooting Method
//Page no. 577
clc;close;clear;

h=0.25;x=0;y1=0;
deff('y=f(x)','y=-(4*h^2)/(1+x)^2')
deff('y=f1(x)','y=-2*(1+(h^2)/(1+x)^2)')

for i=1:4
    x=x+h
    B(i)=f(x);
    for j=1:4
        if i==4 & i==j
            A(i,j)=f1(x)+1/4
            A(i,j-1)=2
        elseif j==i then
            A(i,j)=f1(x)
            A(i,j+1)=1
            if j-1~=0 then
                A(i,j-1)=1
            end
        end
    end
end
y=inv(A)*B
disp(B,"B =",A,'A = ')
printf('\n\n\n x :')
for i=1:5
    printf('\t%.2f',x)
    x=x+h
end
x=0;printf('\n y :\t%.2f',y1);
for i=1:4
    printf('\t%.4f',y(i))
end
