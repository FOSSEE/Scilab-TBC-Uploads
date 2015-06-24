//To calculate the magnitude of Hall voltage
I = 50;     //current, A
B = 1.5;    //magnetic field, T
e = 1.6*10^-19;
n = 8.4*10^28;      //free electron concentration, electron/m^3
t = 0.5;     //thickness, cm
t = t*10^-2;     //thickness, m
VH = I*B/(n*e*t);     //hall voltage, V
VH = VH*10^6;     //hall voltage, micro-V
printf("magnitude of Hall voltage is %5.3f micro-V",VH);
