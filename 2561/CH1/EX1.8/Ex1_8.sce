//Ex1_8
clc
q=1.59*10^(-19) //charge on an electron
disp("q = "+string(q)+"coulomb") //charge on an electron
d=0.037
disp("dimension of semiconductor,d="+string(d)+" cm")
A=(d^2) //area formulae for square shaped semiconductor
disp("cross sectional area,A =d^2="+string(A)+" cm square") 
x=10^(-4)
disp("thickness,x ="+string(x)+" cm")
x0=0
disp("thickness,x0 ="+string(x0)+" cm")
p=9.22*10^(15)//
disp("hole concentration at x,p= "+string(p)+" /cm-cube")//calculation
p0=0//
disp("hole concentration at x0,p0= "+string(p0)+" /cm-cube")//calculation
dp=(p-p0)//formulae
dx=(x-x0)//formulae
disp(" change in concentration at ,dp= "+string(dp)+" /cm-cube")//calculation
disp("change in thickness,dx= "+string(dx)+" cm")//calculation
(dp/dx)==(p-p0)/(x-x0)//formulae
disp(" slope,(dp/dx) =(p-p0)/(x-x0)="+string(dp/dx)+" holes/cm-cube")//calculation
Dp=12
disp("hole diffusion constant,Dp= "+string(Dp)+" cm-sq/s")//calculation
Ip=A*q*Dp*(dp/dx)
disp(" hole diffusion current,Ip =A*q*Dp*(dp/dx)="+string(Ip)+" ampere")//calculation
