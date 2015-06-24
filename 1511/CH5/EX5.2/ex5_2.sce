// Example 5.2 page no-281
clear
clc
B=100 //Beta
rc=1000  //Ohm
vcc=10 //V
vbe=0  //v
vce=4 //V
ib=(vcc-vce)/(rc*(B+1))
printf("\nIb = %.1f micro A",ib*10^6)
rb=vce/ib
s=(B+1)/(1+(B*rc/(rc+rb)))
printf("\nRb = %.1f K-Ohm\nS = %.0f",rb/1000,s)
