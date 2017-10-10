//Example 9// Ch 5
clc;
clear;
close;
// given data
Deq=600;//mean geometric distance b/w conductors in cm
delta=1;//at standard temp and pressure
r=1;//radius of conductors in cm
E0=30*delta*(1+(0.3/sqrt(delta*r)));//corona onset field in kVpeak/cm
printf("corona onset field %f kVpeak/cm",E0)
V0=E0*log(Deq);//corona onset voltage
printf("corona onset voltage %f kVpeak",V0)
V0rms=V0/sqrt(2);//rms onset voltage in kV
printf("corona rms onset voltage %f kV",V0rms)
