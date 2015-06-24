//clc()
//f(x) = exp(-x)-x
//f'(x) = -exp(-x)-1
for i = 1:5
    if i == 1 then
        x(i) = 0;
    else
         x(i) = x(i-1) - (exp(-x(i-1))-x(i-1))/(-exp(-x(i-1))-1);
         et(i) = (x(i) - x(i-1)) * 100 / x(i);
         x(i-1) = x(i);
    end
end
disp(x)
disp(et)
