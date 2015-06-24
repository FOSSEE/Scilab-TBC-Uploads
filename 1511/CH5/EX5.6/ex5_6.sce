// Example 5.6 page no-288
clear
clc

b=100 //Beta
rc=1000 //ohm
vcc= 10  //V
vbe=0  //v
vce=4 //v
ib=(vcc-vce)/((b+1)*rc)
printf("\nIb = %.1f micro A",ib*10^6)
rb=vce/ib
s=(b+1)/(1+(b*rc/(rc+rb)))
printf("\nRb = %.1f K-Ohm\nS = %.0f",rb/1000,s)
