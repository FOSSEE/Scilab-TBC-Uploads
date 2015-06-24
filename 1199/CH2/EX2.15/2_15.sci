// 2.15
clc;
Pd=(10^2)/150;
printf("Power dissipation = %.3f W",Pd)
th_pot=80+Pd*30;
PDa=(10*10^-3)*(th_pot-35);
printf("\nPower dissipation = %.3f W",PDa)
disp('Since power dissipation is higher than the dissipation allowed so potentiometer is not suitable')

