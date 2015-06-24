//Initilization Of Variables
a=1 //Lower Limit oF the Integral
b=3 //Upper Limit of the Integral
n=10 //Interval of the integral
//Calculation
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(t)))-f(t(1))-f(t(n+1)))
endfunction
deff('[y]=f(t)','y=t^2')
function[I2]=Trap_Composite2(f1,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I2=(h/2)*((2*sum(f1(t)))-f1(t(1))-f1(t(n+1)))
endfunction
deff('[y1]=f1(t)','y1=t*2')
z=b-a
//Result
clc
printf('%fi+%fj%fk',Trap_Composite1(f,a,b,n),Trap_Composite2(f1,a,b,n),-z) 

