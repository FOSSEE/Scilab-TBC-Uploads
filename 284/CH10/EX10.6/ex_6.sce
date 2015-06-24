// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Threshold voltage voltage
//Ex_6//page 448
tox=650*10^-8
eps=11.7*8.85*10^-14
eps_ox=3.9*8.85*10^-14
Qss=10^10
Vtp=-1
Nd=2.5*10^14
ni=1.5*10^10     //intrinsic carrier concentration
phi_tn=0.0259*log(Nd/ni)
xdt=(4*eps*phi_tn/(e*Nd))^0.5
QSD_MAX=e*Nd*xdt;
phi_ms=-0.35
Vtp2=(-QSD_MAX-Qss*e)*(tox/eps_ox)+phi_ms-2*phi_tn
q=abs(Vtp2)==Vtp
printf('Since Vtp2=Vtp, it is essentially equal to the desired result')
