
clc
clear
//Initialization of variables
m1=5.28
m2=1.28
m3=23.52
//calculations
m=m1+m2+m3
x1=m1/m
x2=m2/m
x3=m3/m
C=12/44 *m1/ m
O=(32/44 *m1 + m2)/m
N=m3/m
sum1=(x1+x2+x3)*100
sum2=(C+N+O)*100
//results
printf("From gravimetric analysis, co2 = %.1f percent , o2 = %.1f percent and n2 = %.1f percent",x1*100,x2*100,x3*100)
printf("\n From ultimate analysis, co2 = %.2f percent , o2 = %.2f percent and n2 = %.2f percent",C*100,O*100,N*100)
printf("\n Sum in case 1 = %.1f percent",sum1)
printf("\n Sum in case 2 = %.1f percent",sum2)
