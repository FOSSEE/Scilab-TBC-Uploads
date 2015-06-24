//clc()
z = 0.5;
//f(x) = x^10 - 1
//f'(x) = 10*x^9
for i = 1:40
    if i==1 then
        y(i) = z;
    else
        y(i) = y(i-1) - (y(i-1)^10 - 1)/(10*y(i-1)^9)
    end
end
disp(y)
disp("Thus, after the first poor prediction, the technique is converging on to the true root of 1 but at a very slow rate")
