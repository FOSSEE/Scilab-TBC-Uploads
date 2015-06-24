clc
clear
//Initialization of variables
n=1.4
p1=50 //psia
J=778
cp=0.24
T1=520 //R
k=n
R=1545/29
m=1
p2=10 //psia
//calculations
rpt=(2/(n+1))^(n/(n-1))
pt=p1*rpt
Vtrev=223.77*sqrt(cp*T1*(1- rpt^((k-1)/k)))
v1=R*T1/p1/144
vt=v1*(p1/pt)^(1/k)
At=m*vt/Vtrev
V2rev=223.77*sqrt(cp*T1*(1-(p2/p1)^((k-1)/k)))
v2=v1*(p1/p2)^(1/k)
A2=m*v2/V2rev
//results
printf("Area required = %.5f ft^2",At)
printf("\n Area in case 2 at the exit= %.5f ft^2",A2)

