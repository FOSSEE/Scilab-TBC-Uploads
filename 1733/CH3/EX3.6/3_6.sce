//3.6
clc;
V=30;
Vrms1=4*V/(2^0.5*%pi);
printf("RMS value of fundamental component of input voltage = %.1f V", Vrms1)
VL=V;
R=3;
Pout=VL^2/R;
printf("\nOutput Power = %.0f W", Pout)
Ip_thy=VL/R;
printf("\nPeak current in each thyristor = %.0f A", Ip_thy)
Iavg=Ip_thy/2;
printf("\naverage current in each thyristor = %.1f A", Iavg)
PIV=VL;
printf("\nPeak reverse blocking voltahe = %.0f V", PIV)

