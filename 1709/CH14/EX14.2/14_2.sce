clc
//Initialization of variables
x1=0.75
x2=0.25
an=-190*10^-6 //volt/C
rn=1.45*10^-3 //ohm cm
zn=2*10^-3 //K^-1
ap=190*10^-6 //volt/C
rp=1.8*10^-3 //ohm cm
zp=1.7*10^-3 //K^-1
T=200+273 //K
Tc=373 //K
Th=573 //K
//calculations
Ktn=an^2/(rn*zn)
Ktp=ap^2/(rp*zp)
Z=(an-ap)^2 /(sqrt(rn*Ktn) + sqrt(rp*Ktp))^2
Ap=sqrt(Ktn*rp/Ktp/rn)
An=1
K=Ktn*An+ Ktp*Ap
R=rn/An + rp/Ap
mopt=sqrt(1+ Z*T)
RL=mopt*R
nopt=(T-273)*(mopt-1)/(Th*(mopt+ Tc/Th))
nmax=T/(Th*(1+1- T/Th/2 + 4/Th/Z))
nmax=0.0624
dT=T-273
Popt=(an-ap)^2 *dT^2 /((1+mopt)^2 *RL)
Pmax=(an-ap)^2 *dT^2 /((1+1)^2 *R)
//results
printf("Optimum efficiency = %.2f percent",nopt*100)
printf("\n Max. efficiency = %.2f percent",nmax*100)
printf("\n Optimum power = %.3f Watt",Popt)
printf("\n Maximum power = %.3f Watt",Pmax)
