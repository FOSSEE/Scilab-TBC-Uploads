//EX3_12 PG-3.39
clc
Rl=5e3;
N1toN2=2;//transformer turns ratio
Ep=460;//rms value of primary voltage
Es=Ep/N1toN2;
Esm=sqrt(2)*Es;//peak value of the secondary voltage
Im=Esm/Rl;//We neglect forward diode resistance
Idc=2*Im/%pi;
printf("\n  Therefore DC load current is %f A \n",Idc)
Edc=Idc*Rl;
printf("\n  DC load voltage is %.3f V \n",Edc)
Rf=.482;//ripple factor for full bridge rectifier
Vrip=Rf*Edc;//ripple voltage
printf("\n  Therefore ripple voltage is %.1f V \n",Vrip)
disp(" Peak value of bridge rectifier=PIV rating of each diode")
PIV=Esm;
printf("\n  Therefore PIV rating of each diode is %.2f V",PIV)
