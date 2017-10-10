//Eg-11.13
//pg-495

clear
clc

//Note that the values of log(y) are not equally spaced.

x(1) = -2.9999;
x(2) = -2.4486;
x(3) = -2.1599;
x(4) = -1.9893;
x(5) = -1.8687;
x(6) = -1.7734;
x(7) = -1.6990;

y(1) = 4.32;
y(2) = 5.02;
y(3) = 5.39;
y(4) = 5.26;
y(5) = 5.10;
y(6) = 4.84;
y(7) = 4.76;

sum1 = 0;

for(i = 1:6)
    h(i) = x(i+1) - x(i);
    sum1 = sum1 + h(i)/2*(y(i+1) + y(i));
end

printf('The value of the integral is %f',sum1)

plot(x,y)
xlabel('log(y)')
ylabel('y/(y-yi)')

printf('\n\n The data points and trapezoid approximations are plotted in the figure.\n The area under the curve represents the value of the integral.\n Graphical integration gives I = 6.556\n')