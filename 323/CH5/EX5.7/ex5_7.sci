//Chapter 5,Ex5.7,Pg 5.8
clc;
W0=200 //Power
R1=3.5 //Primary resistance
V1=2300 //Primary voltage
I0=0.3 //no load current
cl=(I0^2)*R1
printf("\n Copper loss=%.3f W \n",cl)
coreloss=W0-cl //Core loss=Input power-copper loss
printf("\n Core loss=%.3f W \n",coreloss)
pf=W0/(V1*I0)
printf("\n Power factor = %.2f (lagging) \n",pf)

