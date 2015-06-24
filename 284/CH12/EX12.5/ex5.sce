// Chapter 12_The junction field effect transistor
//Caption_The MESFET
//Ex_5//page 567
Nc=4.7*10^17
e=1.6*10^-19
eps=8.85*10^-14*13.1
T=300
phi_bn=0.89    //barrier height
Nd=2*10^15
Vt=0.25
phi_n=0.0259*log(Nc/Nd)
Vbi=phi_bn-phi_n   //built in potential barrier
Vpo=Vbi-Vt
a=10^4*(Vpo*2*eps/(e*Nd))^0.5
printf('The channel thickness of GaAs is %1.3f micrometer',a)