//Initilization Of Variables
x1=150 //mm
x2=450 //mm
a=0 //Lower Limit oF the Integral
b=(x2-x1) //Upper Limit of the Integral
n=10 //Interval of the integral
k=0.044 //N/m
//Calculation
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(t)))-f(t(1))-f(t(n+1)))
endfunction
deff('[y]=f(t)','y=k*t') 
//Result
clc
printf('The Work done is %f N.m',Trap_Composite1(f,a,b,n)/1000)
