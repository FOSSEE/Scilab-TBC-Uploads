clc
clear
//Initialization of variables
k=1.4
R=53.3 //lb-ft/lb R
pe=14.7 //psia
p0=114.7 //psia
T0=524.6 //R
g=32.2 //ft/s^2
d=0.5 //in
Nm1=1
//calculations
pr=pe/p0
Nme=sqrt(2/(k-1) *((1/pr)^((k-1)/k) -1))
Te=T0/(1+ (k-1)/2 *Nme^2)
Ve=Nme*sqrt(k*g*R*Te)
At=%pi/4 *(d)^2
Ae=Nm1/Nme *((1+ (k-1)/2 *Nme^2)/(1+ (k-1)/2 *Nm1^2))^((k+1)/(2*(k-1))) *At
//results
printf("Mach number exit = %.2f",Nme)
printf("\n Exit velocity = %d ft/s",Ve)
printf("\n Exit area = %.3f in^2",Ae)
