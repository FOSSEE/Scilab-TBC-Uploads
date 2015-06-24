//EX3_24 PG-3.59
clc
Es=230;//rms value of input voltage
f=50;//frequency
Idc=50e-6;
Rl=100;//load resistance
C=1000e-6;//filter capacitor
Esm=sqrt(2)*Es;
Edc=2*Esm/%pi;
printf("\n Therefore DC output voltage is %.2f V \n",Edc)
Idc=Edc/Rl;
disp("if the capacitor filter C=1000e-6 is use then ")
Rf=(4*sqrt(3)*f*C*Rl)^(-1);//ripple factor
printf("\n ripple factor is %.4f \n",Rf)
Edc=Esm-Idc/(4*f*C);
printf("\n Therefore new DC load voltage is %.4f V \n",Edc)

