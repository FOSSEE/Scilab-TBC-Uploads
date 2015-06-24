clear
clc

X1=.4
X2=.3
X0=.05

S=15
V=13.2
Z=V*V/S
E=1
If=1

Xn=((3*E/(If))-(X1+X2+X0))/3
xn=Xn*Z
mprintf("\n(a)Xn= %.3f ohm ",xn)

Rn=((3*E/(If))-((X1+X2+X0)*%i))/3
rn=Rn*Z
mprintf("\n(b)Rn= %.2f ohm ",rn)
//the differnece in result is due to error in calculation in textbook
disp("the differnece in result is due to error in calculation in textbook")
