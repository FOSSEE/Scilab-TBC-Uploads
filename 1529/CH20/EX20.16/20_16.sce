//Chapter 20, Problem 16
clc
P=12e3                          //total power
pf=0.6                          //power factor
ang=acos(pf)
ta=tan(ang)
P12=P*ta/3^(1/2)

//solving two equation by matrix method
A=[1 1;1 -1]
B=[12000;P12]
x=linsolve(A,-B)
printf("wattmeter 1 read = %.2f kW\n\n",x(1)/1000)
printf("wattmeter 2 read = %.2f kW\n\n",x(2)/1000)
