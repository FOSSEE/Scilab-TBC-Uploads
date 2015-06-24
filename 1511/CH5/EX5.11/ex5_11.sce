// Example 5.11 page no-296
clear
clc

vcc=4.5  //V
r2 =2700 //Ohm
re=270 //Ohm
r1=27000// ohm
b=44 //Beta
vbe=0.6
rb=r1*r2/(r1+r2)
v2=vcc*r2/(r1+r2)
printf("\nRb = %.2f K-Ohm\nV2 = %.2fV",rb/1000,v2)

//(a)
s=(1+b)/(1+(b*re/(re+rb)))
printf("\n\n(a)\nS = %.1f",s)
//(b)
ib=-(v2-vbe)/((b+1)*re+rb)
ic=b*ib
k=(b*2035+re+b*re)
vce=vcc-k/10^5
printf("\n\n(b)Quiescent Point\nIb = %.3f mA\nIc = %.3f mA\nVce = %.3f V",ib*1000,ic*1000,vce) 
//(c)
s1=(1+b)/(1+(b*re)/(re+3150))
ib1=-0.19/((re*(1+b))+3.15)
vce2 =vcc-0.938
printf("\n\n(c)\nS=%.2f\nQuiescent Point:\nVce = %.3f V\nIb = %.3f mA\nIc = %f mA",s1,vce2,-ib1*1000,0.528)
