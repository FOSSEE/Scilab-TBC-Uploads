//2.29
clc;
Vm=400*2^0.5/3^0.5;
Vrms=(400*100)^0.5;
alph=acosd(((Vrms/(Vm*3^0.5))^2-0.5)/(3*3^0.5/(4*%pi)))/2;
printf("Firing angle = %.2f degree", alph)