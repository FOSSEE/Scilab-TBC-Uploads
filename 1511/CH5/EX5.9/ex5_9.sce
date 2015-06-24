// Example 5.9 page no-291
clear
clc
vcc=16 //v
rc =1500 //Ohm
vce = 8 //v
ic = 4*10^-3 //A
s=12   //Stability Factor
b=50 //Beta 
ib=ic/b
re=vcc-vce-ic*rc
re=re/(ib+ic)
rb=14.4*re//(1+b)/((b/s)-1)
vbn=2.2 //V
V=vbn+ib*rb
printf("\nIb = %.0f micro A\nRe = %.2f K-Ohm\nRb = %.2f K-Ohm\nV = %.2fV",ib*10^6,re/1000,rb/1000,V)

r1=vcc*rb/V
r2=V*r1/(vcc-V)
printf("\nR1 = %d K-Ohm\nR2 = %.2f K-Ohm",ceil(r1/1000),r2/1000)
