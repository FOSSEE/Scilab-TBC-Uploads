//clc()
x = 2;//cm
L = 10;//cm
k = 0.835;//cm^2/s
t = 10;//s
n = 1:10000;
T = 324.* (x/L + sum(2.*((-1)^n).*sin(n.*x/L).*exp(-n^2.* %pi^2.* k.* t / L^2)/(n.*%pi)));
disp(T,"T[2,10]analytical = ")
Tex = 64.97;
disp(Tex,"T[2,10]explicit = ")
Tim = 64.49;
disp(Tim,"T[2,10]implicit = ")
Tcn = 64.73;
disp(Tcn,"T[2,10]crank-nicolson = ")
