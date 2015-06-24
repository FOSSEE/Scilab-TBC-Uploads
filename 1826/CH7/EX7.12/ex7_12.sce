// Example 7.12, page no-168
clear
clc

rho=1.54*10^-8
e=1.6*10^-19 //C
ef=5.5*e//J
n=5.8*10^28///per cubic meter
m=9.1*10^-31//kg

//(i)
t=m/(rho*n*e^2)
mu=e*t/m
printf("\n(i)\nThe relaxation time is %.2f*10^-14 s\nThe mobility of the electrons is %.4f *10^-3 m^2/V-s",t*10^14,mu*10^3)

//(ii)
vd=e*t*100/m
printf("\n\n(ii)\nthe drift velocity of elctron is %.5f m/s",vd)

//(iii)
vf=sqrt(2*ef/m)
printf("\n\n(iii)\nFermi velocity is %.2f*10^6 m/s",vf*10^-6)

//(iv)
lam=vf*t
printf("\n\n(iv)\nThe mean free path is %.3f*10^-8 m",lam*10^8)
