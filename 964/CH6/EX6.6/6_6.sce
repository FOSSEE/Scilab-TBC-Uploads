//clc()
funcprot(0)
//f(x) = exp(-x)-x
for i = 1:5
    if i==1 then
        x(i) = 0;
    else
        if i==2 then
            x(i) = 1;
        else
        x(i) =x(i-1) - (exp(-x(i-1))-x(i-1))*(x(i-2) - x(i-1))/((exp(-x(i-2))-x(i-2))-(exp(-x(i-1))-x(i-1)))
        er(i) = (0.56714329 - x(i)) * 100 / 0.56714329;
        end
    end
end
disp(x(1:5),"x =")
disp(er(3:5),"et =")
