//8.2
clc;
Vcc=12;
Re=1*10^6;
Rc=1*10^6;
Ie=(Vcc-0.7)/Re*10^3;
re=25*2/Ie;
printf("re=%.0f ohm",re)
Vgd=Rc/(2*re);
printf("\nVoltage gain for the differential input=%.1f ",Vgd)
Vi=2.1*10^-3;
Vo_Ac=Vgd*Vi;
printf("\nAC output voltage=%.4f V",Vo_Ac)
Beta=75;
Zi=2*Beta*re;
printf("\nInput impedance=%.0f ohm",Zi)
Rc=1*10^6;
RE=10^6;
CMG=Rc/(re+2*RE);
printf("\nCommon mode gain=%.3f ",CMG)
CMRR=Vgd/CMG;
printf("\nCommon mode rejection ratio=%.2f ",CMRR)
