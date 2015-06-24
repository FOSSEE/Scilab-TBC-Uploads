//Example 16.6
//Collocation Method
//Page no. 589
clc;close;clear;

h1=0.000001;h=0.25;x=0;
Y(1)=0;Y(5)=0;
deff('y=p(x)','y=1')
deff('y=q(x)','y=-2/(1+x)^2')
deff('y=f(x)','y=(2*x-4)/(1+x)^4')
deff('y=fi(x,j)','y=(1-x)*x^j')
deff('y=f1(x,y)','y=(-x+y)/h1')   //function for differentiation
for i=1:4
    x=x+h
    for j=1:4
        A(i,j)=p(x)*f1(f1(fi(x,j),fi(x+h1,j)),f1(fi(x+h1,j),fi(x+2*h1,j)))+f1(p(x),p(x+h1))*f1(fi(x,j),fi(x+h1,j))+q(x)*fi(x,j)
    end
end
x=0;
for i=1:4
    x=x+h
    B(i)=f(x)
end
disp(B,'B =',A,"A =")
C=inv(A)*B
x=0;
for i=2:4
    x=x+h;
    for j=1:4
        Y(i)=Y(i)+C(j)*fi(x,j)
    end
end
disp(Y,"Solution Matrix Y = ")