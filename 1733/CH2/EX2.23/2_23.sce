//2.23
clc;
Vm=230*2^0.5;
Vdc=2*Vm/%pi*cosd(30);
printf("dc value of voltage = %.1f V", Vdc)
Irms=10;
I=10;
printf("\n RMS value of current= %.0f A", Irms)
Is1=2*2^0.5/%pi*I;
printf("\n Fundamental component of input current= %.0f A", Is1)
Is=10;
HF=((Is/Is1)^2-1)^0.5;
printf("\n Harmonic factor= %.3f ", HF)
Displacement_factor=cosd(-30);
printf("\n Displacement factor= %.3f ", Displacement_factor)
Power_factor=Is1/Is*cos(-%pi/6);
printf("\n Power factor= %.3f lagging", Power_factor)
Out_rms=230;
Form_factor=Out_rms/Vdc;
Ripple_factor=(Form_factor^2-1)^0.5;
printf("\n Ripple factor= %.3f ", Ripple_factor)