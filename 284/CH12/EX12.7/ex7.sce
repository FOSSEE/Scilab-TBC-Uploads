// Chapter 12_The junction field effect transistor
//Caption_The MESFET
//Ex_7//page 570
e=1.6*10^-19
eps=8.85*10^-14*13.1
T=300
ni=1.8*10^6
L=1.2*10^-4
mun=8000
a=0.70*10^-4
Idi=75*10^-6
VGS=0.5
Vt=0.24
kn=Idi/(VGS-Vt)^2    //conduction parameter
W=10^4*kn*2*a*L/(mun*eps)
printf('The required channel width is %1.2f micrometer',W)