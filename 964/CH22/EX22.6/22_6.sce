//clc()
//N(x) = (int(-infinity,-2,exp(-(x^2)/2)) + int(-2,1,exp(-(x^2)/2)))/(2*pi)^0.5
//first integral can be solved as
//int(-infinity,-2,exp(-(x^2)/2)) = int(-0.5,0,exp(-1/(2*t^2))/t^2)
h = 1/8;
//int(-0.5,0,exp(-1/(2*t^2))/t^2) = h*(f(x-7/16) + f(x-5/16) + f(x-3/16) + f(x-1/16)) 
t1 = -7/16;
t2 = -5/16;
t3 = -3/16;
t4 = -1/16;
m1 = exp(-1/(2*t1^2))/t1^2;
m2 = exp(-1/(2*t2^2))/t2^2;
m3 = exp(-1/(2*t3^2))/t3^2;
m4 = exp(-1/(2*t4^2))/t4^2;
I1 = h*(m1 + m2 + m3 + m4);
disp(I1,"the value of first integral = ")
//simpsons 1/3rd sule is applied for the second integral
h1 = 0.5;
x1 = -2;
x2 = -1.5;
x3 = -1;
x4 = -0.5;
x5 = 0;
x6 = 0.5;
x7 = 1;
n1 = exp(-(x1^2)/2);
n2 = exp(-(x2^2)/2);
n3 = exp(-(x3^2)/2);
n4 = exp(-(x4^2)/2);
n5 = exp(-(x5^2)/2);
n6 = exp(-(x6^2)/2);
n7 = exp(-(x7^2)/2);
I2 =(1-(-2)) * (n1 + 4 *(n2 + n4 + n6) + 2*(n3 + n5) + n7)/(18);
disp(I2,"The value of second integral = ")
f = (I1 + I2)/(2 * %pi)^0.5;
disp(f,"Therefore the final result can be computed as ")
N = 0.8413;
e = (N - f) * 100 / N;
disp("%",e,"error = ")
