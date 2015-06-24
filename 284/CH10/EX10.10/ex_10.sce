// Chapter 10_Fundamentals of the Metal Oxide Semiconductor Field Effect Transistor
//Caption_Substrate bias effects
//Ex_10//page 478
T=300
Na=3*10^16
tox=500*10^-8
VSB=1
ni=1.5*10^10     //intrinsic carrier concentration
phi_fp=0.0259*log(Na/ni)
eps_ox=3.9*8.85*10^-14
Cox=eps_ox/tox
delVT=(2*e*eps*Na)^0.5*((2*phi_fp+VSB)^0.5-(2*phi_fp)^0.5)/Cox
printf('The change in threshold voltage is %1.2fV',delVT)
