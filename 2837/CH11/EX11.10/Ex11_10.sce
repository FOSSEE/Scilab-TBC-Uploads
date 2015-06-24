clc
clear
//Initialization of variables
R=53.35
v=300 //ft/s
p=100 //psia
t1=200 //F
q=500 //Btu/s
gc=32.2 //ft/s^2
J=778
//calculations
rho1=p*144/(R*(460+t1))
x=poly(0,"x")
s=x^2 -0.206*x+0.00535
vec=roots(s)
rho2=vec(1)
t2=(236.6 - 0.301/rho2^2)/0.248
P2=rho2*R*(t2+462) /144
v2=sqrt(2*gc*J*(236.6-0.248*t2))
v22=rho1*v/rho2
//results
printf("Final temperature = %.1f F",t2)
printf("\n Final pressure = %.1f psia",P2)
printf("\n Exit velocity in case 1 = %.1f ft/s",v2)
printf("\n Exit velocity in case 2 = %.1f ft/s",v22)
