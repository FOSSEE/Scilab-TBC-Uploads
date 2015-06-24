clc
clear
//Initialization of variables
k=1.4
R=53.3 //lb-ft/lb R
p0=100 //psia
T0=534.6 //R
g=32.2 //ft/s^2
d=0.5 //in
Nm1=1
A=2/144 //ft^2
//calculations
disp("Exit mach number is found using trial and error")
Nme=0.24
rho0=p0*144/(g*R*T0)
G= A*sqrt(k*p0*144*rho0) *(2/(k+1))^((k+1)/(2*(k-1)))
pe=p0*(1/(1+(k-1)/2 *Nme^2))^(k/(k-1))
Te=T0/(1+ (k-1)/2 *Nme^2)
Ve=Nme*(sqrt(k*g*R*Te))
//results
printf("\n Exit mass flow rate = %.3f slug/s",G)
printf("\n Exit pressure = %.2f psia",pe)
printf("\n Exit temperature = %.1f R",Te)
printf("\n Exit velocity = %d ft/s",Ve)
printf("\n Exit mach number = %.2f",Nme)

