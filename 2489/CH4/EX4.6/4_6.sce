clc
//Intitalisation of variables
clear
ma= 0.495 //gm
Ma= 66 //gms
mb= 0.182 //gms
Mb= 45.5 //gms
p= 76.2 //cm of hg
//CALCULATIONS
na= ma/Ma
nb= mb/Mb
nt= na+nb
pa= p*na/nt
pb= p*nb/nt
//RESULTS
printf ('Number of moles of given gas A = %.4f ',na)
printf ('\n Number of moles of given gas B = %.4f ',nb)
printf ('\n Total number of moles  = %.4f ',nt)
printf ('\n Partial pressure of A  = %.1f cm of mercury',pa)
printf ('\n Partial pressure of B  = %.1f cm of mercury',pb)
