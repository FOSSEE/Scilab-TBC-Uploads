//16.9
clc;
IL=11000;
Eph=IL/3^0.5;
printf("\nLine to neutral voltage=%.2f V",Eph)
E_Each_phase=Eph;
printf("\nVoltage induced in Each phase winding=%.2f V",E_Each_phase)
T=(242/360)*(1/50)*1000;
printf("\nTime interval=%.2f ms",T)
IL_peak=(2^0.5)*IL;
printf("\nPeak line voltage=%.2f V",IL_peak)