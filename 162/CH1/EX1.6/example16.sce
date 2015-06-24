//Example 1.6
clc;
n1=-4:-1;
for i=1:length(n1)
    x(i)=1+(n1(i)/4);
end
for j=5:9
    x(j)=1;
end
n=-4:4;
plot2d3(n,x);
xtitle('x[n]');