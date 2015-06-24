//EX3_21 PG-3.58
clc
Idc=100e-3;//average current
C=500e-6;//filter capacitor
Esm=18;//peak voltage
f=50;//frequency of the supply in Hz
Edc=Esm-Idc/(4*f*C);
Rl=Edc/Idc;//load resistance
Rf=(4*sqrt(3)*f*C*Rl)^(-1)*100;//ripple factor
printf("\n ripple factor is %.2f %% \n",Rf)
