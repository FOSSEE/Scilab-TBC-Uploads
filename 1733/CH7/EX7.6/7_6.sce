//7.6
clc;
Vin=230;
Vm=2^0.5*Vin;
alph=90;
R=50;
VL=Vm*(1/(2*%pi)*(%pi-90*%pi/180+sind(180)/2))^0.5;
Po=VL^2/R;
printf("Power supplied when firing angle is 90 degree =%.2f W", Po)
alph=120;
R=50;
VL=Vm*(1/(2*%pi)*(%pi-120*%pi/180+sind(240)/2))^0.5;
Po=VL^2/R;
printf("\nPower supplied when firing angle is 120 degree =%.2f W", Po)