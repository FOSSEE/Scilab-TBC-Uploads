// Example 3.1, page no-89
clear
clc
h=6.626*10^-34//Js
e=1.6*10^-19//C
c=3*10^8//m/s
v=10000//V
lam_min=(h*c)/(e*v)
V=c/lam_min
printf("\n(i)\nThe wavelength of X-rays emitted Lamda_min = %.2f A°\n(ii)\nThe frequency of X-ray beam emitted is %.1f*10^18 Hz",lam_min*10^10,V*10^-18)
