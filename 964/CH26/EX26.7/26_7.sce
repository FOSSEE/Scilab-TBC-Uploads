//clc()
//dy/dx = -y
//y = exp(-x)
h = 0.5;
x = -1.5:h:10;
y(1) = exp(-x(1));
y(2) = exp(-x(2));
y(3) = exp(-x(3));
y(4) = 1;
m(4) = y(4);
for  i = 4:23;
    y(i+1) = y(i-3) + 4*h*(2*(-y(i)) + y(i-1) + 2*(-y(i-2)))/3;
    m(i+1) = y(i+1);
    y(i+1) = y(i-1) + h*(-y(i-1) +4 * (-y(i)) + (-y(i+1)))/3;
end
disp(x(4:24),"x = ")
disp(m(4:24),"y0(milnes method) = ")
disp(y(4:24),"corrected y1(milnes method) = ")
for i =4:23
    y(i+1) = y(i) + h *(55* (-y(i)) / 24 - 59 * (-y(i-1)) / 24 + 37*(-y(i-2))/24 - 9*(-y(i-3))/24);
    m(i+1) = y(i+1)
    y(i+1) = y(i) + h*(9*(-y(i+1))/24 +19*(-y(i))/24 - 5*(-y(i-1))/24 + (-y(i-2))/24);
end
disp(m(4:23),"y0(fourth order adams method) = ")
disp(y(4:23),"y1(fourth order adams method) = ")
