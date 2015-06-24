clc;

//page no 32
//problem 2.2
//i(t)=4cos50t + 3sin50t
A=4;
B=3;
C=sqrt(A^2+B^2);  //right triangle
theta=-1*atan(3/4);  //in rad
disp('rad',theta,'(a)  The current is expressed as 5cos(50t + theta),where theta is');
phi=acot(3/4);  //from figure 2.5 in radian
disp('rad',phi,'(b)  The current is expressed as 5sin(50t+phi), where phi is');
phi=phi*180/%pi;
disp('degree',phi,'or');
