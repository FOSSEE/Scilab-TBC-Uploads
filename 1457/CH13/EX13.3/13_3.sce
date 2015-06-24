clc
//Initialization of variables
kl=0.5
f=0.02
L=15 //ft
D=0.1 //ft
k=3.5
g=9.81
H=2//ft
//calculations
k=kl+f*L/D
V0=sqrt(2*g*H/(1+k))
Q=[0.25 0.5 0.75]
V=V0*Q
Vfun=(2.95+V)./(2.95-V)
lnVfun=log(Vfun)
t=1.129*lnVfun
//results
disp(t)
disp("Similarly, it can be calculated for L=150,1500 ft")
