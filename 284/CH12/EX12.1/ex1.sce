// Chapter 12_The junction field effect transistor
//Caption_Device characteristics
//Ex_1//page 557
T=300
Na=10^18
e=1.6*10^-19
eps=8.85*10^-14*11.7
ni=1.5*10^10
Nd=10^16      //donor concentration
a=0.75*10^-4     //metallurgical channel thichness
Vpo=e*a^2*Nd/(2*eps)     //internal pinch off voltage
Vbi=0.0259*log(Na*Nd/ni^2)     //built in potential barrier
Vp=Vbi-Vpo    //pinch off voltage
printf('The pinch off voltage of this n-channel JFET is %1.2fV',Vp)
