//Chapter 21, Problem 20
clc
c=4e3                       //coper loss
p=500e3                     //transformer rating
r=2.5e3                     //iron loss
pf=0.75                     //power factor
x=sqrt(r/c)
eff=x*p
los=2*r
po=eff*pf
pi=po-los
n=(1-(los/pi))*100
printf("(a) The Output KVA at maximum efficiency = %.2f kVA\n\n",eff/1000)
printf("(b) Maximum efficiency = %.2f percent",n)
