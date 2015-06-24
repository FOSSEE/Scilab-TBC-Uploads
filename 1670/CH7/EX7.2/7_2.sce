//Example 7.2
//Differentiation
//Page no. 232
clc;close;clear;

t=[1,1.1,1.2,1.3,1.4]
I=[8.2277,7.2428,5.9908,4.5260,2.9122]
L=0.05;R=2;h=0.1;
deff('y=f(x)','y=L*i1(x)+R*I(x)')
deff('y=f1(x,h1)','y=(I(x+h1)-I(x-h1))/(2*h)')
deff('y=f2(x,h1)','y=(-I(x+2*h1)+8*I(x+h1)-8*I(x-h1)+I(x-2*h1))/(12*h)')
x=3;h1=1;
i1(x)=f1(x,h1)
E=f(x)
printf('Using Centred Tendency of Order O(h2)\n')
printf('I`(1.2) = %g\n',i1(x))
printf('\n E(1.2) = %g',E)
i1(x)=f2(x,h1)
E=f(x)
printf('\n\n\nUsing Centred Tendency of Order O(h4)\n')
printf('I`(1.2) = %g\n',i1(x))
printf('\n E(1.2) = %g',E)