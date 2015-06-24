//2.21
clc;
Vm=230*2^0.5;
Vdc=2*Vm/%pi*cosd(60);
printf("dc value of voltage = %.2f V", Vdc)
Vrms=230;
printf("\n RMS value of voltage= %.2f V", Vrms)
Is1=2*2^0.5/%pi;
Is=1;
HF=((Is/Is1)^2-1)^0.5;
printf("\n Harmonic factor= %.3f ", HF)
Displacement_factor=cos(-%pi/3);
printf("\n Displacement factor= %.1f ", Displacement_factor)
Power_factor=Is1/Is*cos(-%pi/3);
printf("\n Power factor= %.2f lagging", Power_factor)