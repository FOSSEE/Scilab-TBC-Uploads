//clc()
del = 0.01;
z = 0.56714329
x1 = 1;
//f(x) = exp(-x) - x
disp(x1,"x1 = ")
for i = 1:4
    if i == 1 then
        x(i) = 1
    else 
        w = x(i-1);
        m = exp(-x(i-1)) - x(i-1);
        x(i-1) = x(i-1)*(1+del);
        n = exp(-x(i-1)) - x(i-1);
        x(i) = w - (x(i-1)- w) * m/(n-m);
        em = (z - x(i))*100/z;
         disp(x(i),"x = ")
        disp("%",em,"error = ")
    end
end
