//EX3_18 PG-3.56
clc
Es=120;//rms value of input voltage
f=50;//frequency
Idc=50e-3;
C=100e-6;//filter capacitor
Esm=sqrt(2)*Es;
Edc=Esm-Idc/(4*f*C);
printf("\n DC output voltage is %.4f V \n",Edc)
Vr=Idc/(4*sqrt(3)*f*C);//rms value of ripple voltage
printf("\n rms value of ripple voltage is %.4f V \n ",Vr)
 Rf=Vr/Edc;
printf("\n ripple factor is %f \n",Rf)
