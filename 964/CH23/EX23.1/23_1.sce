//clc()
//f(x) = -0.1*x^4 - 0.15*x^3 - 0.5 * x^2 - 0.25 *x + 1.2
h = 0.25;
t = -0.9125;
x = 0:h:1;
disp(x,"x = ")
fx = -0.1*x^4 - 0.15*x^3 - 0.5 * x^2 - 0.25 *x + 1.2;
disp(fx,"f(x) = ")
fd = (- fx(5) + 4*fx(4) - 3 * fx(3))/(2 * h);
efd = (t - fd) * 100 / t;
disp(fd,"by forward difference")
disp("%",efd,"error in forward difference method = ")
bd = (3 * fx(3) - 4 * fx(2) + fx(1))/ (2*h);
ebd = (t - bd) * 100 / t;
disp(bd,"by backward difference")
disp("%",ebd,"error in backward difference method = ")
cdm = (-fx(5) + 8*(fx(4)) -8*fx(2) + fx(1) ) / (12*h);
ecdm = (t - cdm) * 100 / t;
disp(cdm,"by central difference")
disp("%",ecdm,"error in central difference method = ")
