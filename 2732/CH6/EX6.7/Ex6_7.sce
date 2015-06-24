clc
// initialization of variables
clear
F=500 //kg
k=25 //kg/cm
dd=15 //cm
ss=3500 //kg/cm^2
L=2 //m
G=8*10^5 //kg/cm^2
// calculations
x=sqrt(%pi*G/(25*L*32*100))
d=x*16*(F+dd*k)/(ss*%pi)
x2=x*d^2
// results
printf('d=%.2f cm',d)
printf('\n x=%.2f cm',x2)

// Text: not exact


