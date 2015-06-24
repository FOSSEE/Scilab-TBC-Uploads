// Example 4.21 page no-243
clear
clc
rd=100*10^3 //Ohm
gm=3000*10^-6
rl=10000 //Ohm
Av=(-gm*rd*rl)/(rd+rl)
printf("\n(a)\nAv = %.1f",Av)
f=10^6 //Hz
c=3*10^-12  //F
xc=1/(2*%pi*f*c)
r0= 9.09  //K-Ohm
printf("\n\n(b)\nXc = %d K-Ohm",xc/1000)
z0 = (r0*xc)/sqrt(r0^2 + (xc/1000)^2)
printf("\nZ0 = %.2f K-Ohm",z0/1000)
