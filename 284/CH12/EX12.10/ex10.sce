// Chapter 12_The junction field effect transistor
//Caption_High electron mobility transistor
//Ex_10//page 585
Nd=10^18
d=20*10^-8
dd=500*10^-8   //thickness
phi_B=0.85
q=1.6*10^-19
VG=0
epsn=12.2  //relative dielectric constant
Vp2=q*Nd*dd^2/(2*epsn*8.85*10^-14)   //a parameter
x=0.22    //x=del Ec/q
Voff=phi_B-x-Vp2     //threshold voltage
ns=(VG-Voff)*epsn*8.85*10^-14/(q*(dd+d+80*10^-8))
printf('The two dimensional electron concentration is %1.2f cm^-2',ns)