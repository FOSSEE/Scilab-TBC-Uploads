//2.5
clc;
Vm=400;
alpha=30;
R=50;
Vdc=(Vm/(2*%pi))*(1+cosd(alpha));
printf("Average Load voltage = %.1f V", Vdc)
Load_current_average=Vdc/R;
printf("\nAverage Load current = %.3f A", Load_current_average)
V=400*(((%pi-(%pi/6))/(4*%pi))+(sind(60)/(8*%pi)))^0.5;
printf("\nRMS voltage = %.1f V", V)
RMS_current=V/R;
printf("\nRMS current = %.3f A", RMS_current)