//Initilization Of Variables
a=1 //Lower Limit oF the Integral
b=5 //Upper Limit of the Integral
n=10 //Interval of the integral
W=80 //lb
us=0.25 //coefficient of static friction
uk=0.20 //coefficient of kinetic friction
g=32.2 //ft/s^2
//Calculation
//Limiting Force
F=W*uk //lb 
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(t)))-f(t(1))-f(t(n+1)))
endfunction
deff('[y]=f(t)','y=t*20')
//Using Impulse momentum theorem
l=Trap_Composite1(f,a,b,n) //storing integration value in a variable
v=(g/W)*(l-F*(b-a)) //ft/s
//Result
clc
printf('The speed of the block is %f ft/s',v)
