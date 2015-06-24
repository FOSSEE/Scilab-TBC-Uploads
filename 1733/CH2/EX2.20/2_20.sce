//2.20
clc;
Vm=230*2^0.5;
Vdc=Vm/%pi*(1+cosd(90));
printf("dc value of voltage = %.2f V", Vdc)
Vrms=230*((1/%pi)*(%pi-(%pi/2)+sin(%pi)/2))^0.5;
printf("\n RMS value of voltage= %.2f V", Vrms)
Is=(1-(%pi/2)/%pi)^0.5;
Is1=2/%pi*2^0.5*cos(%pi/4);
HF=((Is/Is1)^2-1)^0.5;
printf("\n Harmonic factor= %.3f ", HF)
Displacement_factor=cos(-%pi/4);
printf("\n Displacement factor= %.4f ", Displacement_factor)
Power_factor=Is1/Is*cos(-%pi/4);
printf("\n Power factor= %.4f lagging", Power_factor)