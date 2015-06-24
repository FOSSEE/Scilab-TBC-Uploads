//5.1
clc;
Vin=150;R=8;
duty_cycle=36/(36+64);
VL=Vin*duty_cycle^0.5;
printf("RMS output voltage=%.0f V", VL) 
Po=VL^2/R;
printf("\nPower output =%.1f W", Po) 
 // since losses are neglected
 Pi=Po;
printf("\nPower Input =%.1f W", Pi) 
Irms_load=VL/R;
Irms_input=11.25;
VA_input=Irms_input*Vin;
pf_input=Po/VA_input;
printf(" \nInput Power factor =%.1f lagging", pf_input) 
Ip_thy=2^0.5*Vin/R;
Iavg_thy=duty_cycle*Ip_thy/%pi;
printf("\nAverage thyristor Current =%.3f A", Iavg_thy) 
Irms_thy=Ip_thy*duty_cycle^0.5/2;
printf("\nRMS thyristor Current =%.3f A", Irms_thy)