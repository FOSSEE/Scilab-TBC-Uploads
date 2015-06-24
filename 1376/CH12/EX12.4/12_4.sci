//12.4
clc;
disp('1.5 cm core displacement produces 6V so')
d_15=6;
d_18=1.8*d_15/1.5
printf("1.8 cm core displacement produces=%.2f V",d_18);
d_08=(-0.8)*(-d_15)/(-1.5);
printf("\n-0.8 cm core displacement produces=%.2f V",d_08);
d_06=(-0.6)*(-d_15)/(-1.5);
printf("\n-0.6 cm core displacement produces=%.2f V",d_06);