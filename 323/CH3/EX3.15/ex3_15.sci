//Example 15,Chapter 3
clc;
f=(314/(2*%pi))
printf("\n f=%.0f Hz \n",f)
disp('For a sinusoidal waveform')
disp('Vavg=2Vm/pi')
disp('Vrms=Vm/sqrt(2)')
//(ii)
disp('kf=Vrms/Vavg')
kf=%pi/(2*sqrt(2))
printf("\n kf=%.2f \n",kf)
//(iii)
disp('kp=Vm/Vrms')
kp=sqrt(2)
printf("\n kp=%.3f \n",kp)

