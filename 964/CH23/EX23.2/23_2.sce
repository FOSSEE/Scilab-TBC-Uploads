//clc()
//f(x) = -0.1*x^4 - 0.15*x^3 - 0.5 * x^2 - 0.25 *x + 1.2
h = 0.5;
t = -0.9125;
x = 0:h:1;
disp(x,"x with h = 0.5 is")
fx = -0.1*x^4 - 0.15*x^3 - 0.5 * x^2 - 0.25 *x + 1.2;
disp(fx,"f(x) with h = 0.5 is")
cdm = (fx(3) - fx(1))/ 1;
ecdm = (t - cdm) * 100 / t;
disp(cdm,"by central difference ( h = 0.5 ) ")
disp("%",ecdm,"error in central difference method ( h = 0.5 ) = ")
h1 = 0.25;
x1 = 0:h1:1;
disp(x1,"x with h = 0.25 is")
fx1 = -0.1*x1^4 - 0.15*x1^3 - 0.5 * x1^2 - 0.25 *x1 + 1.2;
disp(fx1,"fx with h = 0.25 is")
cdm1 = (fx1(4) - fx1(2))/ (2*h1);
ecdm1 = (t - cdm1) * 100 / t;
disp(cdm1,"by central difference ( h = 0.25 ) ")
disp("%",ecdm1,"error in central difference method ( h = 0.25 ) = ")
D = 4 * cdm1 /3 - cdm / 3;
disp(D,"improved estimate =")
