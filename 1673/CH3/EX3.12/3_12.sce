//practical interpolation
//example 3.12
//page 99
clc;clear;close;
x=[1.72 1.73 1.74 1.75 1.76 1.77 1.78];
y=[0.1790661479 0.1772844100 0.1755204006 0.1737739435 0.1720448638 0.1703329888 0.1686381473];
h=0.01//interval between values of x
c=1;
for i=1:6
    d1(c)=y(i+1)-y(i);
    c=c+1;
end
c=1;
for i=1:5
    d2(c)=d1(i+1)-d1(i);
    c=c+1
end
c=1;
for i=1:4
    d3(c)=d2(i+1)-d2(i);
    c=c+1;
end
c=1;
for i=1:3
    d4(c)=d3(i+1)-d3(i);
    c=c+1;
end
x0=1.7475;
y_x=y(3);
p=(x0-x(3))/h;
y_x=y_x+p*d1(3)+p*(p-1)*((d2(2)+d2(3))/2)/2;
printf(' the value at %f by bessels formula is : %0.10f\n\n',x0,y_x);
y_x=y(4);
q=1-p;
y_x=q*y(3)+q*(q^2-1)*d2(2)/6+p*y(4)+p*(p^2-1)*d2(2)/6;
printf(' the value at %f by everrets formula is : %0.10f\n\n',x0,y_x);