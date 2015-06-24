// Example 4.17 page no-231
clear
clc

a=3*10^-4 //cm
nd=10^15 //electrons/cm^3
e=1.6*10^-19  //C
eps=12/(36*%pi*10^11)
vp=e*nd*a^2/(2*eps)
printf("\n(a)\nVp = %.1f V",vp)
b=a*(1-(1/2)^(1/2))
printf("\n\n(b)Vgs=Vp/2\nb = %.2f * 10^-4 cm",b*10^4)
