clc
//initialisation
p=1.013*10^5//newton/m2
d=0.09//kg/m3
t1=27//c
T=273
T1=t1+T//k
//CALCULATIONS
c1=sqrt(3*p/d)
c2=c1*sqrt(T1/T)
cb=c2*8/(3*%pi)
cm=c2*sqrt(2/3)
//results
printf(' avg velocity= % 1f m/sec',cb)
printf(' \nmost probable velocity= % 1f m/sec',cm)
