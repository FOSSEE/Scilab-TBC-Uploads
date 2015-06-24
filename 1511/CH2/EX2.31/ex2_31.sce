// Example 2.31 page no-116
clear
clc

//(a)
Vt=300/11600
v=Vt*log(1.9)
printf("\n(a)\nV=%.3fV",v)

//(b)
v1=0.2
i1=10*(%e^(v1/Vt)-1)
printf("\n(b)\nFor V=0.2, I=%.2f mA",i1/1000)
v2=0.3
i2=10*(%e^(v2/Vt)-1)
printf("\n\nFor V=0.3, I=%.2f A",i2/1000000)
