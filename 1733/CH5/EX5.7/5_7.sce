//5.7
clc;
f=50;
Vin=150;
w=2*%pi*f;
L=22*10^-3;R=4;
th=atand(w*L/R);
Beta=180+th;
printf("Conduction angle of thyristor=%.0f degree",Beta)
Vm=2^0.5*Vin;
VL=Vm*(1/(2*%pi)*(%pi++sind(120)/2-sind(2*240)/2))^0.5;
printf("\nRMS output Voltage=%.0f V", VL)