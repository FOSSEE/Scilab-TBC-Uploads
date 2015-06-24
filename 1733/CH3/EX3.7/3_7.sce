//3.7
clc;
R=10;
V=200;
IL_rms_funda=9.28/2^0.5;
printf("RMS value of fundamental component of load current=%.2f A", IL_rms_funda)
IL_peak=(9.28^2+6.55^2+1.89^2+0.895^2+0.525^2);
printf("\nPeak value of load current=%.2f A", IL_peak)
Irms_harmonic=(11.56^2-9.28^2)^0.5/2^0.5;
printf("\nRMS harmonic current=%.3f A",Irms_harmonic)
TMH=(11.56^2-9.28^2)^0.5/9.28;
printf("\nTotal harmonic distortion=%.3f",TMH)
IL_rms=11.56/2^0.5;
Po=IL_rms^2*R;
printf("\nTotal output power=%.1f W",Po)
Po_funda=IL_rms_funda^2*R;
printf("\nFundamental Component of power=%.3f W",Po_funda)
Iavg=Po/V;
printf("\nAverage input current=%.4f A",Iavg)
Ip_thy=11.56;
printf("\nPeak thyristor current=%.2f A", Ip_thy)
