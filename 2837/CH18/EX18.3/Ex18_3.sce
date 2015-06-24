clc
clear
//Initalization of variables
n=1.35
p1=14.2
q=400 //cfm
p2=200 //psia
p1=14.2 //psia
ve=0.75
t1=530 //R
//calculations
thp=-n/(n-1) *144 *p1*q/33000 *(1- (p2/p1)^((n-1)/n))
pd=q/ve
Tmax=t1*(p2/p1)^((n-1)/n)
//results
printf("Theoretical hp = %.1f hp",thp)
printf("\n Piston displacement = %d cfm",pd)
printf("\n Max. Temperature = %d R",Tmax)
