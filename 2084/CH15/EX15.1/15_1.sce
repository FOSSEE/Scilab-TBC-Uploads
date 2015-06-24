//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.1
//calculation of the velocity,function f(t) giving displacement,function g(x) giving shape

//given data
//y = y0*exp-(((t/T) - (x/lambda))^2)
y0=4*10^-3//value of y0(in m)
T=1//value of T(in s)
lambda=4*10^-2//value of lambda(in m)

//calculation
v=lambda/T//velocity of the wave
//by putting x=0 in equation (1)......f(t) = y0*exp-((t/T)^2)
//by putting t=0 in equation (1)......g(x) = y0*exp-((x/lambda)^2)

printf('the velocity of the wave is %d cm/s',v*10^2)
printf('\nthe function f(t) giving displacement is...................f(t) = y0*exp-((t/T)^2)')
printf('\nthe function g(x) giving shape of the string at t=0 is.....g(x) = y0*exp-((x/lambda)^2)')
