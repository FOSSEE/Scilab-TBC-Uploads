//Ex14_13 Pg-700
clc

del=1/100 //fractional difference of refractive indices
lamda=1.3*10^(-6) //cutoff wavelength in m
n1=1.5 //refractive index
d=6.6*10^(-6) //diameter of the core
alpha=2 //loss in fiber

disp("    We have for a GRIN , maximum value of normalized frequency for single mode operation is given by")
disp("          V = 2.4*sqrt(1+2/alpha)")
V=2.4*sqrt(1+2/alpha) //normalzed frequency

disp("    For maximum core radiation , we have")
r=V*lamda/(2*%pi*n1*sqrt(2*del)) //radius of the core
printf("              r = %.1f um \n",r*1e6)

rr=2*r //diameter of the core
printf("\n Maximum core diameter which permit single mode operation \n = 2*r = %.1f um",rr*1e6)
