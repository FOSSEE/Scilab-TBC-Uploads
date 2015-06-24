//2.9
clc;
Vm=150*2^0.5;
Vdc=(Vm/(%pi))*(1+cosd(45));
R=30;
Load_current_average=Vdc/R;
printf("\nAverage Load current = %.2f A", Load_current_average)
Vrms=Vm*(((%pi-(%pi/4))/(2*%pi))+(sind(90)/(4*%pi)))^0.5;
printf("\nRMS voltage = %.1f V", Vrms)
RMS_current=Vrms/R;
printf("\nRMS current = %.3f A", RMS_current)