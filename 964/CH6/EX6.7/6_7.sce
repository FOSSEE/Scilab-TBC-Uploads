//clc()
funcprot(0)
//f(x) = log(x)
disp("secant method")
for i = 1:4
    if i==1 then
        x(i) = 0.5;
    else
        if i==2 then
            x(i) = 5;
        else
        x(i) =x(i-1) - log(x(i-1)) * (x(i-2) - x(i-1))/(log(x(i-2)) - log(x(i-1)));
        end
    end
end
disp(x(1:4),"x =")
disp("thus, secant method is divergent")
disp("Now, False position method")
    xl = 0.5;
    xu = 5;
for i = 1:3
    m = log(xl);
    n = log(xu);
    xr = xu - n*(xl - xu)/(m - n);
    disp(xr,"xr = ")
    w = log(xr);
    if m*w < 0 then
        xu = xr;
    else
        xl = xr;
    end
end
 
disp("thus, false position method is convergent")
