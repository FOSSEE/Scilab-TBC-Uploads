// 2.29
clc;
C=500*10^-12;
R20=10000*(1-0.05*(20-25));
f20=1/(2*%pi*R20*C);
printf("Frequency of oscillation at 20 degree C = %.2f Hz ",f20)
R25=10000*(1-0.05*(25-25));
f25=1/(2*%pi*R25*C);
printf("\nFrequency of oscillation at 25 degree C = %.2f Hz ",f25)
R30=10000*(1-0.05*(30-25));
f30=1/(2*%pi*R30*C);
printf("\nFrequency of oscillation at 30 degree C = %.2f Hz ",f30)