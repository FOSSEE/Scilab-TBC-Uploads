//example 6.3
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
x0=1.6//first and second derivative at 1.6
h=0.2;
f1=(((d1(3)+d1(4))/2-(d3(2)+d3(3))/4+(d5(1)+d5(2))/60))/h
printf('the first derivative of function at 1.6 is:%f\n',f1);
f2=((d2(3)-d4(2)/12)+d6(1)/90)/(h^2);
printf('the second derivative of function at 1.6 is:%f\n',f2);



