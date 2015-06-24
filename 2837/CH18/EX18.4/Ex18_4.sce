clc
clear
//Initalization of variables
n=1.35
p1=14.2 //psia
p3=200 //psia
q=400 //cfm
ve=0.78
t1=530 //R
//calculations
p2=sqrt(p3*p1) //psia
thp=-2*n/(n-1) *144 *p1*q/33000 *(1- (p2/p1)^((n-1)/n))
pd=q/ve
pd2=q*p1/p2 /ve
Tmax=t1*(p2/p1)^((n-1)/n)
//results
printf("Theoretical hp = %.1f hp",thp)
printf("\n For low pressure case, Piston displacement = %.1f cfm",pd)
printf("\n For high pressure case, Piston displacement = %.1f cfm",pd2)
printf("\n Max. Temperature = %.1f R",Tmax)
disp('The answers are a bit different due to rounding off error')
