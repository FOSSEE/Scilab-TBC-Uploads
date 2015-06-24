//Example 7.4
//Differentiation
//Page no. 233
clc;close;clear;

t=[1.2,1.3,1.4,1.5,1.6]
I=[1.5095,1.6984,1.9043,2.1293,2.3756]
h=0.1;
deff('y=f2(x,h1)','y=(-I(x+2*h1)+8*I(x+h1)-8*I(x-h1)+I(x-2*h1))/(12*h)')
x=3;h1=1;
i1(x)=f2(x,h1)
printf('\nUsing Centred Tendency of Order O(h4)\n')
printf('f`(1.4) = %g\n',i1(x))