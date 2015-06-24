//Initilization Of Variables
a=0 //Lower Limit oF the Integral
b=6 //Upper Limit of the Integral
n=10 //Interval of the integral
l=20 //lb/ft
//Calculation
//Using Trapezoidal Rule for Intergration 
R=(b-a)*l
function[I2]=Trap_Composite2(f1,a,b,n)
    h=(b-a)/n
    t=linspace(a,b,n+1)
    I2=(h/2)*((2*sum(f1(t)))-f1(t(1))-f1(t(n+1)))
endfunction
deff('[y1]=f1(t)','y1=20*t')
d=Trap_Composite2(f1,a,b,n)/R //ft
//Result
clc
printf('The value of R is:%i lb\n',R)
printf('The value of d is:%i ft',d) 

