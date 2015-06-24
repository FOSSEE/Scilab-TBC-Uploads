//clc()
//f(x) = exp(-x) - x;
//using simple fixed point iteration, Xi+1 = exp(-Xi)
x = 0;//initial guess
for i = 1:11
    if i == 1 then
        y(i) = x;
    else
         y(i) = exp(-y(i-1));
        e(i) = (y(i) - y(i-1)) * 100 / y(i);
    end      
end
disp(y,"x = ")
disp("%",e,"e = ")
