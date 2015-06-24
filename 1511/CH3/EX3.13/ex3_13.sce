// Example 3.13 page no-176
clear
clc
veb=0.2 //V
hfe=49 
vz=6.3  //V
i=5*10^-3
vi=8
//(1)
y=veb+vz
printf("\n1. The nominal output voltage is the sum of the transistor V_EB and zener voltage.\nV0=%.1f V\n",y)
//(2)
r1=(vi-vz)/i
printf("\n2. R1 must supply 5mA to the zener diode\nR1=%.0f Ohm",r1)
//(3)
k=veb/vz
printf("\n\n3. The maximum allowable zener current is\nIz=%f A",k)
ibmax=k-i
it=ibmax*(1+hfe)
printf("\nTotal current range = %.2f A",it)
//(4)
pd=y*it
printf("\n\n(4)\nThe maximum power dissipation,\nPd=%.1f W",pd)
//(5)
rs=(vi-y)/it
pdr=it^2*rs
printf("\n\n(5)\nRs=%.2f Ohm\nPower dissipated by Rs is P = %dW",rs,pdr)
