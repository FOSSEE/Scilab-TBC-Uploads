//3.10
clc;
Ip_load=400/(2*10);
Irms_load=(Ip_load^2*2/3)^0.5;
printf("RMS value of the load current = %.2f A", Irms_load)
Po=Irms_load^2*10*3;
printf("\nOutput power = %.2f W", Po)
Iavg_thy=Ip_load/3;
printf("\nAverage thyristor current = %.2f A", Iavg_thy)
Irms_thy=(Ip_load^2/3)^0.5;
printf("\nRMS value thyristor current = %.2f A", Irms_thy)
