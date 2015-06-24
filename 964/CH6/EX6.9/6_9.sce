//clc()
//f(x) = x^3 - 5*x^2 + 7*x -3
//f'(x) = 3*x^2 - 10*x + 7
disp("standard Newton Raphson method")
for i = 1:7
    if i == 1 then
        x(i) = 0;
    else
         x(i) = x(i-1) - ((x(i-1))^3 - 5*(x(i-1))^2 + 7*x(i-1) -3)/(3*(x(i-1))^2 - 10*(x(i-1)) + 7);      
         et(i) = (1 - x(i)) * 100 / 1;
         disp(x(i),"x = ")
         disp("%",et(i),"error = ")
         x(i-1) = x(i);
    end
end
disp("Modified Newton Raphson method")
//f"(x) = 6*x - 10
for i = 1:4
    if i == 1 then
        x(i) = 0;
    else
         x(i) = x(i-1) - ((x(i-1))^3 - 5*(x(i-1))^2 + 7*x(i-1) -3)*((3*(x(i-1))^2 - 10*(x(i-1)) + 7))/((3*(x(i-1))^2 - 10*(x(i-1)) + 7)^2 - ((x(i-1))^3 - 5*(x(i-1))^2 + 7*x(i-1) -3) * (6*x(i-1) - 10));
         et(i) = (1 - x(i)) * 100 / 1;
         disp(x(i),"x = ")
         disp("%",et(i),"error = ")
         x(i-1) = x(i);
    end
end
