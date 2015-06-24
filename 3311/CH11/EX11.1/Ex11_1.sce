// chapter 11
// example 11.1
// Determine the peak values of average and rms thyristor currents, minimum circuit turn-off time, the ratio of third harmonic voltage to fundamental voltage , maximum value of di/dt and the angle at which greatest forward or reverse voltage is applied.
// page-718-719
clear;
clc;
// given
R=4; // in ohm
E=230; // in V (supply voltage)
f=50; // in Hz
alpha=%pi/3; // in degree
n=3
// calculate
Em=E*sqrt(2);// calculation of peak input voltage
I_T_av_m=Em/(%pi*R);// calculation of peak value of average thyristor current
I_T_rms_m=Em/(2*R);// calculation of peak value rms thyristor current
w=2*%pi*f;// calculation of angluar frequency
Toff=%pi/w;// calculation of minimum circuit turn-off time
A3=(Em/%pi)*(sin((n+1)*alpha)/(n+1)-sin((n-1)*alpha)/(n-1));
B3=(Em/%pi)*((cos((n+1)*alpha)-1)/(n+1)-(cos((n-1)*alpha)-1)/(n-1));
E_3m=sqrt(A3^2+B3^2);
E_1m=(Em/%pi)*sqrt((sin((n-1)*alpha)/2+(%pi-alpha))^2+((cos((n-1)*alpha)-1)/(n-1))^2);// calculation of 
ratio=E_3m/E_1m;// calculation of the ratio of third harmonic voltage to fundamental voltage
di_dt=%inf// calculation of maximum value of di/dt
alpha2=%pi/2;// calculation of the angle at which greatest forward or reverse voltage is applied.
Em_max=sqrt(2)*E;// calculation of magnitude of maximum voltage
printf("\nThe peak value of average thyristor current is \t\t\t\t I_T_av_m=%.2f A",I_T_av_m);
printf("\nThe peak value rms thyristor current is \t\t\t\t I_T_rms_m=%.2f A",I_T_rms_m);
printf("\nThe minimum circuit turn-off time is \t\t\t\t\t Toff_m=%.f ms",Toff*1E3);
printf("\nThe ratio of third harmonic voltage to fundamental voltage is \t\t %.3f ",ratio);
printf("\nThe maximum value of di/dt is \t\t\t\t\t\t di/dt=%f A/s",di_dt);
printf("\nThe angle at which greatest forward or reverse voltage is applied is \t alpha=%.2f radian",alpha2);
printf("\nThe magnitude of maximum voltage is \t\t\t\t\t Em_max=%.2f V",Em_max);