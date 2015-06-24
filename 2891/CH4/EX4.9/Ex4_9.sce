// Exa 4.9
clc;
clear;
close;
// given :
// formula :combination(n,r)=(factorial(n))/(factorial(r)*factorial(n-r))
disp("when n=2")
n=2
a_0=factorial(1)/factorial(0)*factorial(1) //relative excitation level 1
a_1=factorial(1)/factorial(1)*factorial(0) //relative excitation level 2
disp((string(a_0)+" "+string(a_1)),"relative excitation levels of binomial array at n=2:")
disp("when n=3")
n=3
a_1=factorial(1)/factorial(1)*factorial(0) //relative excitation level 2
a_0=2*a_1 // relative excitation level 1
disp((string(a_1)+" "+string(a_0)+" "+string(a_1)),"relative excitation levels of binomial array at n=3:")
