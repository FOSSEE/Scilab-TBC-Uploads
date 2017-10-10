//Eg-13.2
//pg-523

clc
clear


//F = x^2*y = dy/dx

deff('[out] = func(in1,in2)','out = in1^2*in2')

y(1) = 1;    //Initial condition
x(1) = 0;
z(1) = exp(x(1)^3/3);

h = 0.1;

printf('x           yEuler      yexact\n')
for(i = 1:10)
    x(i) = 0.1*i;
    y(i+1) = y(i) + h*func(x(i),y(i));
    z(i+1) = exp(x(i)^3/3);
    printf('%f    %f    %f\n',x(i),y(i),z(i+1))
end

printf('\nNote that the exact solution is calculated from the analytical solution y = exp(x^3/3)\n')