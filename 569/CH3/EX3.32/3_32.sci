//calculate standard deviation

clc;
x=[.9 2.3 3.3 4.5 5.7 6.7];
y=[1.1 1.6 2.6 3.2 4 5];
n=6;
a=((n*sum(x.*y)-(sum(x)*sum(y)))/((sum(x^2)*n)-sum(x)^2));
b=((sum(y)*sum(x^2)-(sum(x)*sum(x.*y)))/((sum(x^2)*n)-sum(x)^2));

sdy=sqrt((1/n)*sum((a*x+b-y)^2));
sdx=sdy/a;

sa=sqrt(n/(n*sum(x^2)-sum(x)^2))*sdy;
sb=sqrt(sum(x^2)/(n*sum(x^2)-sum(x)^2))*sdy;
disp(sa,'s_a');
disp(sb,'s_b');