// Example 5.1 page no-281
clear
clc

B=50 //beta
rc= 2000 //ohm
rb=100*10^3 //K-ohm
vcc =10 //V
vbe=0 //v
ib=vcc/((B+1)*rc+rb)
printf("\nIb = %.1f micro A",ib*10^6)
ic=B*ib
printf("\nIc = %.3f mA",ic*10^3)
vce=ib*rb
printf("\nVce =%.2f V",vce)
s=(B+1)/(1+(B*rc/(rc+rb)))
printf("\nS = %.1f",s)
