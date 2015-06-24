//2.27
clc;
Vm=400*2^0.5/3^0.5;
Vdc=360;
alph=acosd(Vdc*%pi/(3*3^0.5*Vm));
printf("Firing Angle = %.1f degree", alph)
VL=400;
IL=200;
S=3^0.5*VL*IL;
printf("\nApparent Power = %.0f VA",S)
P=S*cosd(alph);
printf("\nActive Power = %.1f W",P)
Q=(S^2-P^2)^0.5;
printf("\nReactive Power = %.1f VA",Q)
disp('When AC line voltage is 440V')
V=440;
alph=acosd(Vdc*%pi/(3*2^0.5*V));
printf("Firing Angle = %.1f degree", alph)
disp('When AC line voltage is 360V')
V=360;
alph=acosd(Vdc*%pi/(3*2^0.5*V));
printf("Firing Angle = %.1f degree", alph)
