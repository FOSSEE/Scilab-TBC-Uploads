//EX3_9 PG-3.32
clc
Rf=10;
Rl=100;
Es=30;//transformer rms voltage
Esm=sqrt(2)*Es;//peak value of the voltage
Im=Esm/(Rf+Rl);
Idc=2*Im/%pi;
Edc=Idc*Rl;
printf("Average voltage is %.2f V \n",Edc)
Pdc=Idc^2*Rl;
Irms=Im/sqrt(2);//rms value of the current
Pac=Irms^2*(Rf+Rl);
%n=Pdc/Pac*100;
printf("\n Efficiency is %.2f %%",%n)
