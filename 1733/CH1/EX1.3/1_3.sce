//1.3
clc;
P_loss_avg=0.6;
P_loss_conduction=0.6*2*%pi/%pi;
Ig=0.314;
printf("Ig=%.3f A", Ig)
Vg=1+9*Ig;
printf("\nVg=%.3f V", Vg)
Rg=(24-9*Ig)/Ig;
printf("\nResistance to be connected in series=%.2f ohm", Rg)