clc
//Initialization of variables
rpt=0.569
b=0.8
p1=50 //psia
cp=0.24
T1=520 //R
k=1.4
v2=12.2
v1=3.86
m=1
//calculations
pt=p1*rpt
Vtrev=223.77*sqrt(cp*T1*(1- rpt^((k-1)/k)) /(1- b^4 *(v1/v2)^2))
vt=(p1/pt)^(1/k) *v1
At=m*vt/Vtrev
//results
printf("Area of throat = %.5f ft^2",At)
