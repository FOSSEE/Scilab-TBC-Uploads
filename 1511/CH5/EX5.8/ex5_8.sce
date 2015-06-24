// Example 5.8 page no-290
clear
clc
vcc =20 //V
rc=2 //K-Ohm
re= 0.1 //K-Ohm
r1=100  //K-Ohm
r2 =5   //k-Ohm
b=50   //beta
vbe=0.2 //V
v=r2*vcc/(r1+r2)
rb=r1*r2/(r1+r2)
ib=(v-vbe)/(rb+re*(1+b))
ic=b*ib*1000
ie=ib*1000+ic
vce=vcc-ic*rc/1000-ie*re/1000
s=(1+b)*((1+rb/re)/(1+b+rb/re))
printf("\nV  = %.3f V\nRb = %.2f K-Ohm\nIb = %.2f mA\nIc = %.2f mA\nIe = %.2f mA\nVce= %.0fV\nS  = %d",v,rb,ib*1000,ic/1000,ie/1000,ceil(vce),s)

