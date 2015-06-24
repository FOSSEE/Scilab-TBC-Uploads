//surface fitting by cubic spline
//example 5.7
//page 195
clc;clear;close;
z=[1 2 9;2 3 10;9 10 17];
deff('y=L0(x)','y=x^3/4-5*x/4+1');
deff('y=L1(x)','y=-x^3/2+3*x/2');
deff('y=L2(x)','y=x^3/4-x/4');
x=0.5;y=0.5;
S=0;
S=S+L0(x)*(L0(x)*z(1,1)+L1(x)*z(1,2)+L2(x)*z(1,3));
S=S+L1(x)*(L0(x)*z(2,1)+L1(x)*z(2,2)+L2(x)*z(2,3));
S=S+L2(x)*(L0(x)*z(3,1)+L1(x)*z(3,2)+L2(x)*z(3,3));
printf('approximated value of z(0.5 0.5)=%f\n\n',S);
printf(' error in the approximated value : %f',(abs(1.25-S)/1.25)*100)
