// 7.5
clc;
V=230;
Ton=12;
Toff=19;
Duty_cycle=Ton/(Ton+Toff);
printf("Duty cycle=%.4f", Duty_cycle)
Vrms_output=V*Duty_cycle^0.5;
printf("\nRMS output voltage=%.1f V", Vrms_output)
