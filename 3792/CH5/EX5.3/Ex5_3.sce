// SAMPLE PROBLEM 5/3
clc;clear;funcprot(0);
// Given data
alpha=4;// rad/s^2
omega=-2;// rad/s
x=0.4;// m
y=0.3;// m

// Calculation
// Using the right-hand rule gives
// omega=-2k rad/s and alpha=+4k rad/s^2
r=[x,y];// m
v=[-omega*r(2),omega*r(1)];// (i,j) (k*i=j)(k*j=-i) m/s
a_n=[-omega*v(2),omega*v(1)];// m/s^2
a_t=[-alpha*r(2),alpha*r(1)];// m/s^2
a=a_n+a_t;// m/s^2
printf("\nThe vector expression for the velocity,v=%0.1fi+(%0.1f)j m/s \nThe vector expression for the acceleration of point A,a=%2.1fi+%0.1fj m/s^2",v(1),v(2),a(1),a(2));
v=norm(v);// m/s
a=norm(a);// m/s^2
