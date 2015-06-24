// Example 5.5, page no-312
clear
clc
Cd=0.6
D=150*10^-3
d=75*10^-3
p=250
g=9.8
rho=1000
s=75*10^-3
//(a)

Q=Cd*3.14*s^2*sqrt(2*g*p/rho)/(4*sqrt(1-(d/D)^4))
printf("(a) For orifice plate\nQ=%f m^3/sec = %.3f litres/sec",Q,Q*1000)
Cd1=0.99
Q2=Cd1*3.14*s^2*sqrt(2*g*p/rho)/(4*sqrt(1-(d/D)^4))
printf("\n\n(b)For venturi tube\nQ=%f m^3/sec = %.2f litres/sec",Q2,Q2*1000)
