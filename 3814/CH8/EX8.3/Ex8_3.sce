// radial flow pump characteristic is given by
clc
a=196
b=-10.7
c=7.9
a1=(1/(2*a))
Q=a1*(-b+sqrt((b^2)+(4*a*c)))
mprintf('\n Operating point at  Q = %f m3/s',Q)
H=15+(85*Q^2)
mprintf('\n H = %f m',H)
