//clc()
//y = a*x^b
a1 = -0.3000;
a = 10^(a1);
b = 1.75;
disp(a)
for i=1:5
    x(i) = i;
    y(i) = a*x(i)^b;
    m(i) = log10(x(i));
    n(i) = log10(y(i));
end
disp(x(1:5),"x = ")
disp(y(1:5),"y = ")
disp(m(1:5),"m = ")
disp(n(1:5),"n = ")
plot2d(x(1:5),y(1:5))
zoom_rect([0,0,7,7])
xtitle('y vs x', 'x', 'y')
plot2d(m(1:5),n(1:5))
zoom_rect([0,-1,1,1])
xtitle('log y vs log x', 'log x', 'log y')
