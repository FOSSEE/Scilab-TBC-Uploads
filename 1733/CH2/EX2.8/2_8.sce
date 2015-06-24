//2.8
clc;
Vm=230*2^0.5;
Vdc=(Vm/(2*%pi))*(1+cosd(90));
Idc=Vdc/15;
Vrms=Vm*(((%pi-(%pi/2))/(4*%pi))+(sin(2*%pi)/(8*%pi)))^0.5;
Irms=Vrms/15;
Pdc=Vdc*Idc;
Pac=Vrms*Irms;
Rec_effi=Pdc/Pac;
Form_factor=Vrms/Vdc;
printf("\n Form Factor = %.1f ", Form_factor)
ripple_factor=(Form_factor^2-1)^0.5;
printf("\n Ripple Factor = %.1f ", ripple_factor)
VA_rating=230*7.66;
printf("\n VA rating = %.1f VA", VA_rating)
TUF=Pdc/VA_rating;
printf("\n TUF = %.3f ", Form_factor)
PIV=Vm;
printf("\n PIV = %.1f V", PIV)