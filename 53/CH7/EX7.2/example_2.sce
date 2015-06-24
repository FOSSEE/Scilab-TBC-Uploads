
printf("A=1+(R1/R2)\n");
A=10;
//out put voltage of an op-amp owing to voltage offset effects Vout
printf("Vout=-A*Vos");
Vos=5;//in mV
Vout=-A*Vos;
printf("\nRESULTS:\n");
printf("Output offset voltage is Vout=%d mV",Vout);