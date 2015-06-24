// Chapter 12_The junction field effect transistor
//Caption_The MESFET
//Ex_6//page 568
e=1.6*10^-19
eps=8.85*10^-14*13.1
T=300
ni=1.8*10^6
Na=10^18
Nd=3*10^15
a=0.70*10^-4
Vbi=0.0259*log(Na*Nd/ni^2)
Vpo=e*a^2*Nd/(2*eps)      //internal pinch off voltage
Vt=Vbi-Vpo   //threshold voltage
h=0.6*10^-4
VGS=Vbi-(e*h^2*Nd/(2*eps))
printf('The forward bias voltage required in an n channel GaAs enhancement mode pn jfet to open up a channel is %1.2f V',VGS)


