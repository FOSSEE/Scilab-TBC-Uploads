//5.10
clc;
V=415;
P=20*10^3;
disp('For Triacs')
I_line=P/(3^0.5*V);
Irms=I_line*1.5;
printf("RMS current rating of each triac=%.2f A", Irms)
Vrms=1.5*V;
printf("\nRMS Voltage rating of each triac=%.2f V", Vrms)
disp('For reverse connected thyristors')
Irms_thy=1.5*I_line/2^0.5;
printf("RMS current rating of each thyristor=%.2f A", Irms_thy)
Vrms_thy=1.5*V;
printf("\nRMS voltage rating of each thyristor=%.2f V", Vrms_thy)