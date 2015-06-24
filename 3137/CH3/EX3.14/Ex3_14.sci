//Initilization Of Variables
a=0 //Lower Limit oF the Integral
b=9 //Upper Limit of the Integral
n=10 //Interval of the integral
//Calculation
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I1=(h/2)*((2*sum(f(t)))-f(t(1))-f(t(n+1)))
endfunction
deff('[y]=f(t)','y=(t/9)*30') //y defined as a function of t and not x
function[I2]=Trap_Composite2(f1,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I2=(h/2)*((2*sum(f1(t)))-f1(t(1))-f1(t(n+1)))
endfunction
deff('[y1]=f1(t)','y1=(t^2/9)*30')
d=Trap_Composite2(f1,a,b,n)/Trap_Composite1(f,a,b,n) //m
//Result
clc
printf('The value of d is:%f m\n',d) //m
printf('The value of R is %f N',Trap_Composite1(f,a,b,n)) //N

