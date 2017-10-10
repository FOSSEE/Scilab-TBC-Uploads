//Eg-12.2
//pg-509

clear
clc

x = 0.5;
h = 0.1;

deff('out = func(in)','out = in^2 - sin(in)')

//Forward Difference formulas

f(1) = (func(x+2*h) - 2*func(x+h) + func(x))/h^2;
f(2) = (-func(x+3*h) + 4*func(x+2*h) - 5*func(x+h) + 2*func(x))/(h^2);

//Backward Difference formulas

f(3) = (func(x) - 2*func(x-h) + func(x-2*h))/h^2;
f(4) = (2*func(x)-5*func(x-h)+4*func(x-2*h)-func(x-3*h))/(h^2);

//Central Difference formulas

f(5) = (func(x+h) - 2*func(x) + func(x-h))/(h^2);
f(6) = (-func(x+2*h) + 16*func(x+h) - 30*func(x) + 16*func(x-h) - func(x-2*h))/(12*h^2);


printf('Value of derivative      Type    Order of error\n') 
printf('      %f         Forward       1\n',f(1)) 
printf('      %f         Forward       2\n',f(2)) 
printf('      %f         Backward      1\n',f(3)) 
printf('      %f         Backward      2\n',f(4)) 
printf('      %f         Central       2\n',f(5)) 
printf('      %f         Central       4\n\n',f(6)) 

printf('The exact value is  2.48\nNote that for this function, several formulas in Table 12.2 provide good estimates of second derivate\n')
