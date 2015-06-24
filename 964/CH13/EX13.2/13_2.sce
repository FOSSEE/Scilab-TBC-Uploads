//clc()
//f(x) = 2sinx - x^2/10
x0(1) = 0;
x1(1) = 1
x2(1) = 4;
for i = 1:6
    m(i) = 2*sin(x0(i)) - (x0(i)^2)/10;
    n(i) = 2*sin(x1(i)) - (x1(i)^2)/10; 
    r(i) = 2*sin(x2(i)) - (x2(i)^2)/10;
    x3(i) = ((m(i)*(x1(i) ^ 2 -x2(i) ^ 2)) + (n(i)*(x2(i) ^ 2 -x0(i) ^ 2)) + (r(i)*(x0(i) ^ 2 -x1(i) ^ 2)))/((2*m(i)*(x1(i) -x2(i)))+(2*n(i)*(x2(i) -x0(i)))+(2*r(i)*(x0(i) -x1(i))));
    s(i) = 2*sin(x3(i)) - (x3(i)^2)/10;
    if x1(i) > x3(i) then
        if n(i)<s(i) then
            x0(i+1) = x0(i);
            x1(i+1) = x3(i);
            x2(i+1) = x1(i);
        else
            x0(i+1) = x1(i);
            x1(i+1) = x3(i);
            x2(i+1) = x2(i);
        end
    else
        if n(i)>s(i) then
            x0(i+1) = x0(i);
            x1(i+1) = x3(i);
            x2(i+1) = x1(i);
        else
            x0(i+1) = x1(i);
            x1(i+1) = x3(i);
            x2(i+1) = x2(i);
        end
     end
end
disp(x0(1:6),"x0 = ")
disp(x1(1:6),"x1 = ")
disp(x3(1:6),"x3 = ")
disp(x2(1:6),"x2 = ")
