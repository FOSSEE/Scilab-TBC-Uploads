//5.5
clc;
Vin=110;
Vm=2^0.5*Vin;
alph=60;
R=400;
VL=Vm*(1/(2*%pi)*(%pi-60*%pi/180+sind(120)/2))^0.5;
printf("\nRMS output voltage =%.2f V", VL) 
Po=VL^2/R;
printf("\nPower output =%.2f W", Po) 