//EX3_17 PG-3.56
clc
Edc=12;//output DC voltage
f=50;//frequency
Idc=50e-3;
C=100e-6;//filter capacitor
Rl=2e3;//load resistance
Vr=Edc/(2*f*C*Rl);//rms value of ripple voltage
printf("\n rms value of ripple voltage is %.1f V \n ",Vr)
Rf=(4*sqrt(3)*f*C*Rl)^(-1)*100;//ripple factor
printf("\n ripple factor is %.2f %% \n",Rf)
