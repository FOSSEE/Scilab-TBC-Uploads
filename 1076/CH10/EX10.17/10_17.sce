clear
clc

S=50
V=11
Z=V*V/S

If1=1870
If2=2590
If3=4130

X1=V*1e3 /(sqrt(3)*If1)
x1=X1/Z
X2=((V*1e3*sqrt(3)/(sqrt(3)) )/(If2))- X1
x2=X2/Z
X0=((sqrt(3)* V *1e3)/If3) - X1-X2
x0=X0/Z

mprintf("x1= %.2f pu \n x2= %.2f pu \n x0= %.2f pu", x1, x2,x0)
