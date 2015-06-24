// Checking the suitability of the potentiometer
clc;
Pd=(10^2)/150;
disp(Pd,'Power dissipation (W)=')
th_pot=80+Pd*30*10^-3;
PDa=1-(10*10^-3)*(th_pot-35);
disp(PDa,'Power dissipation allowed(W)=')
disp('Since power dissipation is higher than the dissipation allowed so potentiometer is not suitable')

