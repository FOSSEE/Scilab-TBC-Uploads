//Example No. 9_03
//Page No. 280
clear ; close ; clc ;

x = 1:5
f = [1 1.4142 1.7321 2 2.2361]
n = 2.5
for i = 1:5
    if n <= x(i) then
        break ;
    end
end
printf('%f lies between points %i and %i',n,x(i-1),x(i))
f2_5 = f(i-1) + ( n - x(i-1) )*( f(i) - f(i-1) )/( x(i) - x(i-1) )
err1 = 1.5811 - f2_5
disp(f2_5,'f(2.5) = ')
disp(err1,'error1 = ')
disp('The correct answer is 1.5811.The difference between results is due to use of a linear model to a nonlinear use')
disp('repeating the procedure using x1 = 2 and x2 = 4')
x1 = 2
x2 = 4
f2_5 = f(x1) + ( 2.5 - x1 )*( f(x2) - f(x1) )/( x2 - x1 )
err2 = 1.5811 - f2_5
disp(err2,'error2 = ')
disp(f2_5,'f(2.5) = ')
disp('NOTE- The increase in error due to the increase in the interval between the interpolating data')