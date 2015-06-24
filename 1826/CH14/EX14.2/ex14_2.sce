// Example 14.2, page no-386
clear
clc
ed=0.4//eV
e=1.6*10^-19//C
kT=0.025//eV
q=10^8
r=q*%e^(-(ed/kT))
printf("The escape rate per unit time = %2.1f per sec\n Therefore, the luminescent lifetime is nearly %.0f sec",r,r)
