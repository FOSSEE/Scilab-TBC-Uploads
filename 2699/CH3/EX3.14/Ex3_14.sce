//EX3_14 PG-3.40
clc
Rf=0;//diode forward resistance
Es=240;//rms value of supply voltage
Rl=48;//load resistance
Im=sqrt(2)*Es/(Rl+Rf);
Idc=2*Im/%pi;
printf(" Average load current is %.3f A \n",Idc)
Pdc=Idc^2*Rl;
Irms=Im/sqrt(2);//rms value of input current
Pac=Irms^2*Rl;
%n=Pdc/Pac*100;//efficiency
printf("\n Therefore efficiency is %.2f %% \n",%n)
