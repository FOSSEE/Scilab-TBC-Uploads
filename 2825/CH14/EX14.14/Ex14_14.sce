//Ex14_14 Pg-700
clc

del=1.5/100 //fractional difference of refractive indices
lamda=0.85*10^(-6) //cutoff wavelength in m
n1=1.48 //refractive index
d=6.6*10^(-6) //diameter of the core
V=2.4 //normalzed frequency


disp("    For maximum core radiation , we have")
r=V*lamda/(2*%pi*n1*sqrt(2*del))
printf("              r = %.1f um \n",r*1e6)

r=1.3*10^(-6) //actual radius=1.266 micrometer and assumed to 1.3 micometer
rr=2*r //diameter of the core
printf("\n Maximum core diameter which permit single mode operation \n = 2*r = %.1f um",rr*1e6)
