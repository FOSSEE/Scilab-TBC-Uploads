//clc()
//y' = 4*exp(0.8*x) - 0.5*y
//y = 4*(exp(0.8*x) - exp(-0.5*x))/1.3 + 2*exp(-0.5*x)
x = 0:1:4;
disp(x)
x1 = 0;
y1 = 2;
y2(1) = y1;
for i = 1:5
    y(i) = 4*(exp(0.8*x(i)) - exp(-0.5*x(i)))/1.3 + 2*exp(-0.5*x(i));
    dy(i) = 4*exp(0.8*x(i)) - 0.5*y2(i);
    y2(i + 1) = y2(i) + dy(i);
    if i>1 then
        m(i) = (dy(i) + dy(i-1))/2;
        y2(i) = y2(i-1) + m(i);
        dy(i) = 4*exp(0.8*x(i)) - 0.5*y2(i);
    end
    e(i) = (y(i) - y2(i)) * 100 / y(i);
end
disp(y2(1:5),"By heuns method(1 iteration)")
disp("%",e(1:5),"error = ")
