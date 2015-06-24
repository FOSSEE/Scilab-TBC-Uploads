//example 6.2
//numerical diffrentiation by newton's difference formula 
//page 211
clc;clear;close
x=[1.0 1.2 1.4 1.6 1.8 2.0 2.2];
y=[2.7183 3.3201 4.0552 4.9530 6.0496 7.3891 9.0250];
c=1;
for i=1:6
    d1(c)=y(i+1)-y(i);
    c=c+1;
end
c=1;
for i=1:5
    d2(c)=d1(i+1)-d1(i);
    c=c+1;
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
c=1;
for i=1:2
    d5(c)=d4(i+1)-d4(i);
    c=c+1;
end
c=1;
for i=1:1
    d6(c)=d5(i+1)-d5(i);
    c=c+1;
end
x0=2.2//first and second derivative at 2.2
h=0.2;
f1=((d1(6)+d2(5)/2+d3(4)/3+d4(3)/4+d5(2)/5)/h);
printf('the first derivative of fuction at 1.2 is:%f\n',f1);
f2=(d2(5)+d3(4)+(11*d4(3))/12+(5*d5(2))/6)/h^2;
printf('the second derivative of fuction at 1.2 is:%f\n',f2);
x1=2.0;// first derivative also at 2.0
f1=((d1(5)+d2(4)/2+d3(3)/3+d4(2)/4+d5(1)/5+d6(1)/6)/h);
printf('\n \nthe first derivative of function at 1.2 is:%f\n',f1);






