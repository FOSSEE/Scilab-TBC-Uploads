//clc()
//f(x) = 2sinx - x^2/10
x(1) = 2.5;
//f'(x) = 2cosx - x/5
//f"(x) = -2sinx - 1/5
for i = 2:10
  x(i) = x(i-1) - (2*cos(x(i-1)) - x(i-1)/5)/(-2*sin(x(i-1)) - 1/5);
end
disp(x,"x = ")
