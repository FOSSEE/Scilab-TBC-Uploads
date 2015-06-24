//Initilization Of Variables
a=3 //Lower Limit oF the Integral
b=6 //Upper Limit of the Integral
n=10 //Interval of the integral
g=9.8 //m/s^2
w=4/16
//Calculation
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    x=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(x)))-f(x(1))-f(x(n+1)))
endfunction
deff('[y]=f(x)','y=-3*x^-1')
an=-Trap_Composite1(f,a,b,n) //ft-lb
v=sqrt((an*g)/(0.5*w)) //ft/s
//Result
clc
printf('The speed of the disk is %fft/s',v)
//The answer in the textbook is incorrect
