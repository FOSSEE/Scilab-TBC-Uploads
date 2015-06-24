//clc()
//f(x) = 2sinx - x^2/10
xl(1) = 0;
xu(1) = 4;
for i = 1:10
    d(i) = ((5)^(0.5) - 1)*(xu(i) - xl(i))/2;
    x1(i) = xl(i) + d(i);
    x2(i) = xu(i) - d(i);
    m(i) = 2*sin(x1(i)) - (x1(i)^2)/10;
    n(i) = 2*sin(x2(i)) - (x2(i)^2)/10;
    if n(i) > m(i) then
        xu(i+1) = x1(i);
        xl(i+1) = xl(i);
    else
        xl(i+1) = x2(i);
        xu(i+1) = xu(i);
    end
end
disp(xl,"xl = ")
disp(x2,"x2 = ")
disp(x1,"x1 = ")
disp(xu,"xu = ")
