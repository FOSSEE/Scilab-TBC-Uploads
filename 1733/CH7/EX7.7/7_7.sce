//7.7
clc;
V=230;
R=10;
Pmax=V^2/R;
P=2645;
VL=(P*R)^2;
//VL=Vm*(1/(2*%pi)*(%pi-alph*%pi/180+sind(2*alph)/2))^0.5;
//on solving
alph=90;
printf("Firing angle when 2645 W Power is supplied =%.0f degree", alph)
P=1587;
VL=(P*R)^2;
//VL=Vm*(1/(2*%pi)*(%pi-alph*%pi/180+sind(2*alph)/2))^0.5;
//on solving
alph=108.6;
printf("\nFiring angle when 2645 W Power is supplied =%.1f degree", alph)