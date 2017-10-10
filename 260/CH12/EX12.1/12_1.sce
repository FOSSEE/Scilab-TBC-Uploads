//Eg-12.1
//pg-507

clear
clc

x = 2.5;
h = 0.1;

deff('out = func(in)','out = in^3 -6*in^2 + 11*in -6')

//Forward Difference formulas

f(1) = (func(x+h) - func(x))/h;
f(2) = (-func(x+2*h)+4*func(x+h)-3*func(x))/(2*h);

//Backward Difference formulas

f(3) = (func(x)-func(x-h))/h;
f(4) = (3*func(x)-4*func(x-h)+func(x-2*h))/(2*h);

//Central Difference formulas

f(5) = (func(x+h)-f(x-h))/(2*h);
f(6) = (-func(x+2*h)+8*func(x+h)-8*func(x-h)+func(x-2*h))/(12*h);


printf('Value of derivative      Type    Order of error\n') 
printf('      %f         Forward       1\n',f(1)) 
printf('      %f         Forward       2\n',f(2)) 
printf('      %f         Backward      1\n',f(3)) 
printf('      %f         Backward      2\n',f(4)) 
printf('      %f         Central       2\n',f(5)) 
printf('      %f         Central       4\n\n',f(6)) 

printf('The exact value is  -0.25\nNote that the central difference formulas provide the best estimates of the derivative\n')


  