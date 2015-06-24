//EX3_10 PG-3.32
clc
Es=100;//rms value of current
Rf=50;//forward resistance
Rl=950;
Rs=0;//resistance of the transformer secondary which is assumed to be 0 ohm
Esm=sqrt(2)*Es;//peak value of the input voltage
Im=Esm/(Rs+Rl+Rf);
Irms=Im/sqrt(2);
printf("rms value of input current is %.4f A \n",Irms)
Idc=2*Im/%pi;
printf("\n load value of current is %.4f A",Idc)
