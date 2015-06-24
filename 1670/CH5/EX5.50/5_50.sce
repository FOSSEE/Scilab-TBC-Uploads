//Example 5.50
//Spline Interpolation
//Page no. 204
clc;close;clear;

xi=[1,2,3];
yi=[-1,4,21];
x=poly(0,'x')
deff('y=S(x0,x1)','y=(x-xi(x1))*yi(x0)/(xi(x0)-xi(x1))+(x-xi(x0))*yi(x1)/(xi(x1)-xi(x0))');
S1=S(1,2);
S2=S(2,3);
printf('\n The required Spline is : \n')
disp(S2,'S2 = ',S1,'S1 = ');