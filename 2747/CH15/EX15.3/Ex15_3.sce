clc
clear
//Initialization of variables
p1=100 //psia
p2=14.7 //psia
k=1.4
T1=700 //R
R=10.73/29
V=50
cv=0.171
cp=0.24
R2=1.986/29
//calculations
T2=T1/ (p1/p2)^((k-1)/k)
m1=p1*V/(R*T1)
m2=p2*V/(R*T2)
Wrev= cv*(m1*T1 - m2*T2) - (m1-m2)*(T2)*cp
//results
printf("Work done in case 1 = %d Btu",Wrev)
