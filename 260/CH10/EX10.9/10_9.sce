//Eg-10.9
//Pg-447

clear
clc

x = [6 9 14 17.5 20];
y = [5 3.04 4.68 2.7 4.75];

n = length(x);    //no. of data points

for(i = 1:n-1)
    s(i,1) = (y(i+1)-y(i))/(x(i+1)-x(i));
end



x = poly(0,'x');

for(i = 1:n-1)
    f(i) = y(i) - s(i)*(x-6);
end

printf('The expressions for first order splines are :\n')
disp(f)