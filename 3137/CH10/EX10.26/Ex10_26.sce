//Initilization Of Variables
a=0 //Lower Limit oF the Integral
b=8 //Upper Limit of the Integral
n=10 //Interval of the integral
//Calculation
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(t)))-f(t(1))-f(t(n+1)))
endfunction
deff('[y]=f(t)','y=75*t^2')
Rr=Trap_Composite1(f,a,b,n)/(2*8) //lb
//Moment calculations
M=Trap_Composite1(f,a,b,n) //ft-lb
//Result
clc
printf('The reaction is %f lb and Moment is %f lb-ft',Rr,M)
//Decimal accuracy causes discrepancy in answers
