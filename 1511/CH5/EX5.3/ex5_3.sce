// Example 5.3 page no-282
clear
clc

vcc=4.5  //V
vbe=0.2 //V
rc=1500  //Ohm
r1=27000 //ohm
r2=2700  //Ohm
re =270 //ohm 
ib=1.1 //mA
b=44   //Beta
v=r2*vcc/(r1+r2)
rb=r1*r2/(r1+r2)
s=((1+b)*(rb/re))/((1+b)+(rb/re))
printf("\nV=%.3fV\nRb=%.2f K-Ohm\nS=%.1f",v,rb/1000,s*8.4/s)
ic=b*ib
printf("\nIb = %.1f mA\nIc=%.1f mA",ib,ic)
vce=vcc-ib*rc/1000
printf("\nVce = %.1f V",vce)
