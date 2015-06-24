//example 6.11
//rommberg's method
//page 229
clc;clear;close;
deff('y=f(x)','y=1/(1+x)');
k=1;
h=0.5;
x=0:h:1;
l=length(x);
for i=1:l
    y(i)=f(x(i));
end
area=0;//trapezoidal method
for i=1:l
    if i==1|i==l then
       area=area+y(i)
   else
       area=area+2*y(i)
    end
end
area=area*(h/2);
I(k)=area;
k=k+1;
h=0.25;
x=0:h:1;
l=length(x);
for i=1:l
    y(i)=f(x(i));
end
area=0;//trapezoidal method
for i=1:l
    if i==1|i==l then
       area=area+y(i)
   else
       area=area+2*y(i)
    end
end
area=area*(h/2);
I(k)=area;
k=k+1;
h=0.125;
x=0:h:1;
l=length(x);
for i=1:l
    y(i)=f(x(i));
end
area=0;//trapezoidal method
for i=1:l
    if i==1|i==l then
       area=area+y(i)
   else
       area=area+2*y(i)
    end
end
area=area*(h/2);
I(k)=area;
printf('results obtained with h=0.5 0.25 0.125 is %f %f %f\n \n',I(1),I(2),I(3));
for i=1:2
    I1(i)=I(i+1)+(I(i+1)-I(i))/3
end
for i=1:1
    T2(i)=I1(i+1)+(I1(i+1)-I1(i))/3
end
printf('the area is %f',T2(1))

