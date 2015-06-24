function [F] = f28(x)

//f2(x) = 0, with x = [x(1);x(2)]
//represents a system of 2 non-linear equations
F(1) = x(1)^2+x(1)*x(2) + x(2)^2 - 7;
F(2) = x(1)^3+x(2)^3 -9;

endfunction
