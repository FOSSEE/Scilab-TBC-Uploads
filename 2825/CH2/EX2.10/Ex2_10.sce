//Ex2_10 Pg-91
clc

e=1.6*10^(-19) //electron charge
un=700 //mobility of silicon
n=10^17 //concentration of phosphorous atoms
sigma=e*un*n //conductivity
printf("Conductivity = %.1f (ohm-cm)^-1",sigma)
res=sigma^(-1) //resistivity
printf("\n Resistivity = %.4f ohm-cm",res)
Rh=-(e*n)^(-1) //hall coefficient
printf("\n Hall coefficient = %.1f cm^3/C",Rh)
Ix=10^-3 
Bz=10^(-5) 
x=10^(-2)
Vh=(Ix*Bz*Rh)/x
printf("\n Hall Volage = %.1f uV",Vh*10^6)
