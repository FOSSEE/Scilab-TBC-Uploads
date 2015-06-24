//clc()
//3x - 0.1y - 0.2z = 7.85
//0.1x + 7y - 0.3z = -19.3
//0.3x - 0.2y + 10z = 71.4
Y = 0; 
Z = 0;
for i = 1:2
    x(i) = (7.85 +0.1*Y+0.2*Z)/3;
    X = x(i);
    y(i) = (-19.3 - 0.1*X +0.3*Z)/7;
    Y = y(i);
    z(i) = (71.4 - 0.3*X+0.2*Y)/10;
    Z = z(i);
    if i==2 then
        ex = (x(i) - x(i-1))*100/x(i);
        ey = (y(i) - y(i-1))*100/y(i);
        ez = (z(i) - z(i-1))*100/z(i);
    end
end
disp(x(1:2),"x through two iterations =")
disp(y(1:2),"y through two iterations =")
disp(z(1:2),"z through two iterations =")
disp("%",ex,"error of x = ")
disp("%",ey,"error of y = ")
disp("%",ez,"error of z = ")
