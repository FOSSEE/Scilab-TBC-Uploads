// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Threshold voltage voltage
//Ex_5//page 446
T=300
eps=11.7*8.85*10^-14
eps_ox=3.9*8.85*10^-14
e=1.6*10^-19
ni=1.5*10^10     //intrinsic carrier concentration
Na=10^14   //acceptor impurity concentration
Qss=10^10
tox=500*10^-8     //oxide thickness
phi_ms=-0.83
phi_fp=0.0259*log(Na/ni)
xdt=(4*eps*phi_fp/(e*Na))^0.5
QSD_MAX=e*Na*xdt;
Vtn=(QSD_MAX-Qss*e)*(tox/eps_ox)+phi_ms+2*phi_fp
printf('The threshold voltage of this MOS system is %1.3f V',Vtn)
