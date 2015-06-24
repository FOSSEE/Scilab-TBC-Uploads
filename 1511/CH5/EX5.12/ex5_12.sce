// Example 5.12 page no-297
clear
clc

vcc=24 //v
re=270  //Ohm
rc=10000 //Ohm
vce =5 //V
vbe=0.6 //v
b=45 //beta
ic=(vcc-vce)/(rc+(1+b)*re/b)
ib=ic/b
printf("\nIc = %.3f mA\nIb = %.2f micro A",ic*1000,ib*10^6)

//(a)
r=(vce-vbe)/ib
printf("\n\n(a)In collector base circuit\n\tR = %.2f K-Ohm",r/1000)
//(b)
s=(1+b)/(1+(b*rc/(rc+r)))
printf("\n\n(b)Stability Factor,\n\tS = %.3f",s)
//(c)
tj=150
ta=25
pd=125
t=(tj-ta)/pd
printf("\n\n(c)\nThermal Resistance = %.0f°C/W",t*1000)
