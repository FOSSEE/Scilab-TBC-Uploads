//Page Number: 6.23
//Example 6.23
clc;
//We find, k=1/(b-a)
//(b) if a=1 and b=2,P(|x|<c) where c=1/2
a=-1;
b=2;
c=1/2;

k=1/(b-a);
//P(|x|<c) = P(-c<=x<=c)
//Let y
x0=-c;x1=c;
y=integrate('1','x',x0,x1);
y1=k*y;
disp(y1,'P(|x|<c):');

