//Initilization Of Variables
a=0 //Lower Limit oF the Integral
b=0.3 //Upper Limit of the Integral
n=10 //Interval of the integral
g=9.8 //m/s^2
rho=1000 //kg/m^3
//Calculation
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(t)))-f(t(1))-f(t(n+1)))
endfunction
deff('[y]=f(t)','y=(g*0.6*rho*1.2*t)-(0.6*g*rho*t^2)')
B=Trap_Composite1(f,a,b,n)/(2*b) //N
//Result
clc
printf('The value of B is %f N',B)
