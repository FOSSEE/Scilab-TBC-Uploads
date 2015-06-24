//Initilization Of Variables
s1=2 //Lower Limit oF the Integral
s2=5 //Upper Limit of the Integral
n=10 //Interval of the integral
k=20 //lb/in
//Calculation
//Using Trapezoidal Rule for Intergration 
function[I1]=Trap_Composite1(f,s1,s2,n)
    h=(s2-s1)/n
    s=linspace(s1,s2,n+1)
    I1=(h/2)*((2*sum(f(s)))-f(s(1))-f(s(n+1)))
endfunction
deff('[y]=f(s)','y=k*s')
//Result
clc
printf('The work done is %f in-lb',Trap_Composite1(f,s1,s2,n) )
