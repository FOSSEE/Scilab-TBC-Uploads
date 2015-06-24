clc
//Initialization of variables
n=1.3
p2=125 //psia
m=1 //lbm
c=0.04
cv=0.171
k=1.4
p1=14.7 //psia
T2=852 //R
T1=520 //R
//calculations
eta=1+c-c*((p2/p1)^(1/n)) 
md=m/eta
m12=md*(c+1)
m34=m12-m
Q12=m12*cv*((k-n)/(1-n))*(T2-T1)
Q34=m34*cv*((k-n)/(1-n))*(T1-T2)
Q=Q12+Q34
//results
printf("Net heat transfer from air = %.1f Btu/lbm ",Q)
