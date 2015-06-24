//EX3_29 PG-3.61
clc
Rl=2e3;//load resistance
Es=200;//rms voltage
f=50;
Esm=sqrt(2)*Es;//peak value of input voltage
Rf=0;//ideal diodes
Rs=0;
Ism=Esm/(Rf+Rs+Rl);
Idc=2*Ism/%pi;
printf("\n Therefore Average DC load current is %.2f A \n",Idc)
Edc=Idc*Rl;
printf("\n Therefore average DC voltage is %.0f V \n",Edc)
Rf=0.48;//ripple factor
Vrip=Rf*Edc;// ripple voltage
printf("\n rms value of ripple voltage is %.1f V \n ",Vrip)
disp("if a filter capacitor C=500 microF is used then")
C=500e-6;//capacitor filter
Rf=(4*sqrt(3)*f*C*Rl)^(-1);//for full wave rectifier
Vrip=Rf*Edc;//new ripple voltage
printf("\n rms value of new ripple voltage is %.4f V \n ",Vrip)
