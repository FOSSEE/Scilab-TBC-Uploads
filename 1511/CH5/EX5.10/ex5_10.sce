// Example 5.10 page no-294
clear
clc
//Though the procedure is same Answer do not match with the book 
vcc=20 //v
vce =10 //v
vbe=0.6 //V
ic=2*10^-3 //A
rc=4000 //ohm
k=(vcc-vce)/ic //Rc+Re
re=k-rc
printf("\nRe = %.0f K-Ohm",re/1000)
ic2=2.25 //mA
ic1=1.75 //mA
delic=(ic2-ic1)*10^-3 //A
b2=90 //Beta max
b1=36 //Beta min
delb=b2-b1
s2=17.3  //stability factor
rb=(1+b2)/((b2/s2)-1)
rb=rb*re
printf("\nRb = %.1f K-Ohm",rb/1000)
v=vbe+((rb+re*(1+b1))/b1)*ic
printf("\nV = %.2fV",v)
r1=rb*vcc/v
r2=r1*v/(vcc-v)
printf("\nR1 = %.1f K-Ohm\nR2 = %.1f k-Ohm",r1/1000,r2/100)
