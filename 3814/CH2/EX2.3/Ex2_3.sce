// determine flow rate of oil from syphon and also the pressure at point 2
clc
g=9.8 // constant 
k=1.1
v3=sqrt(2*g*k)
mprintf('\n therefore V3= %f m/s',v3)
a=50e-3
Q=(3.14/4)*a^2*v3
mprintf('\n Q = %e m3/s',Q)
sp=820 //specifc gravity
gam=3.1
P2=sp*gam*g
mprintf('\n P2 = %f Pa(negative)',P2)
