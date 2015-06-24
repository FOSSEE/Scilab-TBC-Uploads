//Initilization Of Variables
a=0 //Lower Limit oF the Integral
b=6 //Upper Limit of the Integral
n=10 //Interval of the integral
m=50 //kg
l=6 //m
g=9.8 //m/s^2
//Calculation
//Gravatational Force is 
Fg=g*(m/l) //dx
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(t)))-f(t(1))-f(t(n+1)))
endfunction
deff('[y]=f(t)','y=Fg*(6-t)') 
//Result
clc
printf('The Work done is %f N.m',Trap_Composite1(f,a,b,n))
