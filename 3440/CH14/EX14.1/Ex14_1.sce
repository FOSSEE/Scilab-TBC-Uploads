clc

D=2*10^-14//cm^2/sec
t=3600//K
Cx=10^19
A=sqrt(D*t)
disp(A,"A in cm is= ")
Qt=1.13*Cx*A
disp(Qt,"Q(t) in atoms/cm^3")
//dC/dx=b
b=-(Cx/sqrt(%pi*D*t))
disp(b,"dC/dx in cm^-4 is= ")
xj=2*sqrt(D*t)*2.75
disp(xj,"xj in meter is= ")
b=-(Cx/sqrt(%pi*D*t))*exp(-xj^2/(4*D*t))
disp(b,"dC/dx in cm^-4 is= ")

