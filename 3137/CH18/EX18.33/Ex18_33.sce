//Initilization Of Variables
W1=2 //lb
W2=3 //lb
a=0 //Lower Limit oF the Integral
b=2 //Upper Limit of the Integral
n=10 //Interval of the integral
k=12/12 //lb/ft
g=32.2 //ft/s^2
//Calculation
//Work Done by the spring
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(t)))-f(t(1))-f(t(n+1)))
endfunction
deff('[y]=f(t)','y=k*(2-t)') 
W=Trap_Composite1(f,a,b,n) //ft-lb
//Solving the simultaneous equations
v3=sqrt(W/(0.5*(W2/g)+0.5*(W1/g)*(-W2/W1)^2)) //ft/s
v2=-(W2/W1)*v3 //ft/s
//Result
clc
printf('The speed of 2lb block is %f ft/s and that of 3lb block is %f ft/s',v2,v3) 
