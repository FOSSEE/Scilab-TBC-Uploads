//Chapter 10, Problem 23
clc
V=36.5                          //voltage
V1=50                           //max voltage of voltameter
I1=10                           //max current of ammeter
I=6.25                          //current in amperes
ev=2
R=V/I
ev1=(2/100)*V1
ev2=ev1*100/V
ei1=(ev/100)*I1
ei2=ei1*100/I
eiv=ev2+ei2
r=eiv*R/100
printf("Maximum relative error = %.2f percent or %.2f ohm\n\n",eiv,r)
printf("Resistance = %.2f ohm",R)
