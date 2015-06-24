//clc()
//u(x,y) = x^2 + x*y - 10
//v(x,y) = y + 3*x*y^2 -57
for i = 1:4
    if i == 1 then
        x(i) = 1.5;
        y(i) = 3.5;
    else
        x(i) = sqrt(10 - (x(i-1))*(y(i-1)));
        y(i) = sqrt((57 - y(i-1))/(3*x(i)));
        disp(x(i),"x =")
        disp(y(i),"y =")
    end
end
disp("Thus the approaching to the true value 0f x = 2 and y = 3")
