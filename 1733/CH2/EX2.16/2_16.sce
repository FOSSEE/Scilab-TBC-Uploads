//
clc;
disp('If E=100 V')
Vm=230*2^0.5;
E=100;
R=0.5;
Io=15;
alph=acosd((E+15*0.5)*%pi/(2*Vm));
printf("Firing Angle = %.2f degree", alph)
pf=(100*15+15^2*0.5)/(230*15);
printf("\nPower factor = %.3f lagging", pf)
disp('If E=-100 V')
E=-100;
alph=acosd((E+15*0.5)*%pi/(2*Vm));
printf("\nFiring Angle when E is -100 = %.2f W", alph)
pf=(100*15-15^2*0.5)/(230*15);
printf("\nPower factor = %.3f lagging", pf)