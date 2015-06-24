clc;
clear;
printf("\t\t\tChapter2_example4\n\n\n");
// determination of the heat transfer through the pipe wall per unit length of pipe.
k=14.4; // thermal conductivity of 304 stainless steel in W/(m.K) from appendix table B2
// dimensions of steel pipes in cm from appendix table F1
D2=32.39;
D1=29.53;
T1=40;
T2=38;
Qr_per_length=(2*3.14*k)*(T1-T2)/log(D2/D1);
format(6);
printf("\nThe heat transfer through the pipe wall per unit length of pipe is %.1f W/m = %.2f kW/m",Qr_per_length,Qr_per_length/1000);
