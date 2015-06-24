//3.15
clc;
Vdc=150;
VL=Vdc*(20/180+60/180+20/180)^0.5;
printf("RMS value of the output voltage = %.2f V", VL)