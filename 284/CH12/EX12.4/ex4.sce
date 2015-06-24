// Chapter 12_The junction field effect transistor
//Caption_Transconductance
//Ex_4//page 566
Ipi=0.522*10^-3
Vbi=0.814   //built in potential barrier
Vpo=4.35    //pinch off
VGS=0
gms_max=10^3*3*Ipi*(1-(Vbi/Vpo)^0.5)/Vpo
printf('The maximum transconductance is %1.3f mA/V',gms_max)
