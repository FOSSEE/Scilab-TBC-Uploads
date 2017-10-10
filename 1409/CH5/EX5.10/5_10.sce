clc;
//page no 5-18
//Example 5.10
//Given modulating voltage is 5V and frequency deviation constant is 1kHz/V
amp=5;//Carrier amplitude in V
fd=1;//in kHz/V
fm=15;//in kHz
Fd=fd*amp;//frequency deviation
disp(+'kHz',Fd,'Frequency deviation is');
beta1=Fd/fm;
disp(beta1,'Modulation index is');
//For beta1=0.333, from the table of bessel functions we have
J0=0.96;
J1=0.18;
J2=0.02;//these values are for unmodulated carrier
//Values for modulated carrier are
j0=J0*amp;
j1=J1*amp;
j2=J2*amp;
disp(j0,'J0=');
disp(j1,'J1=');
disp(j2,'J2=');

