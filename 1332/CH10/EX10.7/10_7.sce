//Example 10.7
//Iterative Method
//Page no. 326
clc;clear;close;

x=[0;0;0];
printf('n\txn\t\tyn\t\tzn\n---------------------------------------------------------\n')
for i=1:7
    printf(' %i\t%.10f\t%.10f\t%.10f\n',i-1,x(1),x(2),x(3))
    x(1)=0.7+0.1*x(2)^2-0.05*x(3)^2
    x(2)=0.5-0.3*x(1)^2+0.1*x(1)*x(3)
    x(3)=1.2-0.4*x(2)^2-0.1*x(1)*x(2)
end
printf('\n\nThe solution is x = %.10f, y = %.10f and z = %.10f',x(1),x(2),x(3))