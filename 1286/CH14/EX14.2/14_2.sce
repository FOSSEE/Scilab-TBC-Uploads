clc
//initialisation
t1=573//k
t2=273//k
m=0.032//kg
s=100
r=0.35//c/sec
a=0.0008//sq.mt
e=1
//CALCULATIONS
E=m*s*r
si=E/(a*e*((t1^4)-(t2^4)))
//results
printf(' \n stefans constant= % 1e j m^-2 sec^-1 deg^-4',si)
