//EX3_19 PG-3.56
clc
Ep=230;//rms value of primary voltage
N1toN2=10;//turns ratio
Rl=50;//load resistance
f=50;//frequency of the supply in Hz
Es=Ep/N1toN2;//rms vaue of secondary voltage or the input voltage
Esm=sqrt(2)*Es;//peak value of input voltage
Im=Esm/(Rl);
Idc=2*Im/%pi;
Edc=Idc*Rl;//load voltage
printf("\n Therefore load voltage is %.1f V \n",Edc)
Rf=.48;//ripple factor for full wave rectifier without filter
Vrip=Rf*Edc;//ripple voltage
printf("\n Ripple factor is 0.48")
printf("\n ripple voltage is %.4f V \n",Vrip)
disp("If the capacitor filter is used then")
C=470e-6;//filter capacitor
Edc=Esm-Idc/(4*f*C);
printf("\n new DC load voltage is %.2f V \n",Edc)
Rf=((4*sqrt(3)*f*C*Rl))^(-1);// new ripple factor
Vrip=Rf*Edc;//new ripple voltage
printf("\n Ripple factor is %.4f",Rf)
printf("\n rms value of ripple voltage is %.4f V \n ",Vrip)
// in the book the new ripple factor is 3.256e-3 which is wrong 
//the actual answer is 0.1228 hence the new ripple voltage is 3.4544V 
// not 0.09156V as shown in the book 
