//example 6.4
//estimation of errors 
//page 213
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
f1=((d1(2)-d2(2)/2+d3(2)/3-d4(2)/4+d5(2)/5)/h);
printf('the first derivative of fuction at 1.2 is:%f\n',f1);
f2=(d2(2)-d3(2)+(11*d4(2))/12-(5*d5(2))/6)/h^2;
printf('the second derivative of fuction at 1.2 is:%f\n',f2);
T_error1=((d3(2)+d3(3))/2)/(6*h);//truncation error
e=0.00005;//corrected to 4D values
R_error1=(3*e)/(2*h);
T_error1=T_error1+R_error1;//total error
f11=(d1(3)+d1(4))/(2*h);//using stirling formula first derivative
f22=d2(3)/(h*h);//second derivative
T_error2=d4(2)/(12*h*h);
R_error2=(4*e)/(h*h);
T_error2=T_error2+R_error2;
printf('total error in first derivative is %0.4g:\n ',T_error1);
printf('total error in second derivative is %0.4g:',T_error2);






