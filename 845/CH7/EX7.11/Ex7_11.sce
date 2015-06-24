//Example 7.11

clc
clear

x = 1:0.1:1.8;
x = round(x*10)/10;
y = [1.543 1.669 1.811 1.971 2.151 2.352 2.577 2.828 3.107];
n = length(x);
x0 = x(1);
xn = x(n);

N = [1 2 4 8]
for j = 1:length(N)
    h = (xn - x0)./N(j);
    I = y(1);
    for xx = x0+h:h:xn-h
        xx = round(xx*10)/10;
        I = I + 2*y(x==xx);
    end
    Itrap(j) = h/2*(I + y(n));
    IRomb(1) = Itrap(1);
    if j~=1 then
        IRomb(j) = (4^(j-1)*Itrap(j)-IRomb(j-1))/(4^(j-1)-1);
    end
end
IRomb = round(IRomb*10^5)/10^5;

disp(Itrap(length(N)),"Integral using Trapezoidal rule:")
disp(IRomb(length(N)),"Integral using Romberg''s formula:")
//In third step of computation of integral using Romberg's formula, author mistakenly took the 1.7672 instead of 1.7684 which resulted in a difference
