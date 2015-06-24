// 4.15
clc;
Fd=7.5*165*10^3/100;
mf=5;
Bandwidth=Fd/mf;
printf("Bandwidth of intelligence =%.1f Hz ",Bandwidth)
Tr=0.35/Bandwidth*10^6;
printf("\nRise time=%.1f us ",Tr)
