//Example 4.1
//Quadratic Equation
//Page no. 96
clc;clear;close;
a=input("Enter value of a= ");
b=input("Enter vlaue of b= ");
c=input("Enter value of c= ");
x1=(-1*b+sqrt((b^2)-4*a*c))/(2*a);    //1st root
x2=(-1*b-sqrt((b^2)-4*a*c))/(2*a);    //2nd root
printf('\n1st Root= %f', x1);
printf('\n2nd Root= %f', x2);