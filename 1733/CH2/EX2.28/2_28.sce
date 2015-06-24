//2,28
clc;
Vm=2^0.5*400/3^0.5;
Vdc=3*3^0.5*Vm/%pi*cos(%pi/3);
Idc=150;
Pdc=Vdc*Idc;
printf("Output Power = %.1f W", Pdc)
Iavg_thy=Idc/3;
printf("\nAverage thyristor current = %.0f A", Iavg_thy)
Irms_thy=Idc*(2/6)^0.5;
printf("\nRMS value of thyristor current = %.1f A", Irms_thy)
Ip_thy=Idc;
printf("\nPeak current through thyristor  = %.0f A", Ip_thy)
PIV=2^0.5*400;
printf("\nPeak inverse voltage = %.1f V", PIV)
