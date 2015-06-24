//2.19
clc;
Vm=230*2^0.5;
Vdc=Vm/%pi*(1+cosd(90));
printf("dc value of voltage = %.2f V", Vdc)
Vrms=230*((1/%pi)*(%pi-(%pi/2)+sin(%pi)/2))^0.5;
printf("\n RMS value of voltage= %.2f V", Vrms)
form_factor=Vrms/Vdc;
printf("\nForm factor = %.2f ", form_factor)
