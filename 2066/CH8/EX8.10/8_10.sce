clc
clear
//Initialization of variables
k=1.4
R=53.3 //lb-ft/lb R
e=0.0005 //ft
mu=3.77e-7 //lb-sec/ft^2
pe=14.7 //psia
Te=524.6 //R
g=32.2 //ft/s^2
Vi=12.5 //ft/s
l=6 //in
b=8 //in
L=100 //ft
//calculations
rhoe=pe*144/(R*g*Te)
Ve=Vi/(g*rhoe*(l*b/144))
Nme=Ve/(sqrt(k*g*R*Te))
Rd=l*b/(2*(l+b)) /12
rr=2*R/e
Nr=Ve*4*Rd*rhoe/mu
f=0.019
f2=1/(2*k) *(1/Nme^2 -1) - (k+1)/(4*k) *log((1+ (k-1)/2 *Nme^2)/(Nme^2 *(1+(k-1)/2)))
ff=f*L/(8*Rd) +f2
Nm1=0.305
Tr2=(1+ (k-1)/2 *Nm1^2)/(1+ (k-1/2))
Tre=(1+ (k-1)/2 *Nme^2)/(1+ (k-1/2))
pr2=Nm1*(1+ (k-1)/2 *Nm1^2)^(0.5) /(1+(k-1)/2)^0.5
pre=Nme*(1+ (k-1)/2 *Nme^2)^(0.5) /(1+(k-1)/2)^0.5
p1=pe/pr2 *pre
T1=Te/Tr2 *Tre
//results
printf("Pressure at section 1 = %.1f psia",p1)
printf("\n Tempreature at section 1 = %.1f R",T1)
