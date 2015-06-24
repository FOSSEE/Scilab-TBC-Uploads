//1.12
clc;
P_loss_peak=6;
Ig=0.763;
Vg=1+9*Ig;
Rg=(11-9*Ig)/Ig;
printf("\nResistance to be connected in series=%.3f ohm", Rg)
duty=0.3;
P_loss_average=P_loss_peak*duty;
printf("\nAverage power loss =%.1f W", P_loss_average)