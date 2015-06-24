// chapter 11
// example 11.3
// Determine control range of firing angle, maximum value of rms load current, maximum power and power factor, maximum values of average and rms thyristor current, maximum possible of di/dt and the conduction angle for alpha=0 and alpha=120
// page-721-722
clear;
clc;
// given
R=4; // in ohm
Es=230; // in V (supply voltage)
f=50; // in Hz
wL=3; // in ohm (inductive reactance)
alpha1=0, alpha2=120; // in degree
// calculate
w=2*%pi*f;// calculation of angular frequency
Em=Es*sqrt(2);// calculation of peak value of input voltage
alpha_min=atand(wL/R);// calculation of minimum firing angle
alpha_max=180;// calculation of maximum firing angle
Z=sqrt(R^2+wL^2);// calculation of impedence
I0_rms_m=Es/Z;// calculation of maximum value of rms load current
P0=I0_rms_m^2*R;// calculation of maximum power
pf=P0/(Es*I0_rms_m);// calculation of power factor
I_T_av=(Em/(%pi*Z));// calculation of maximum values of average thyristor current
I_T_rms=Em/(2*Z);// calculation of maximum values of rms thyristor current
di_dt=w*Em/Z;// calculation of maximum possible of di/dt
gama1=180;// calculation of the conduction angle for alpha=0 
gama2=95;// calculation of the conduction angle for alpha=120
printf("\nThe control range of firing angle is \t %.2f degree  <=  alpha  <=  %.2f degree",alpha_min,alpha_max);
printf("\nThe maximum value of rms load current is \t\t I0_rms_m=%.f A",I0_rms_m);
printf("\nThe maximum power is \t\t\t\t\t P0=%.f W",P0);
printf("\nThe power factor is \t\t\t\t\t pf=%.1f",pf);
printf("\nThe maximum values of average thyristor current is \t I_T_av=%.3f A",I_T_av);
printf("\nThe maximum values of rms thyristor current is \t\t I_T_rms=%.3f A",I_T_rms);
printf("\nThe maximum possible of di/dt is \t\t\t di/dt=%1E A/s",di_dt);
printf("\nThe conduction angle for alpha=0 is \t\t\t gama1=%.f degree",gama1);
printf("\nThe conduction angle for alpha=120 is \t\t\t gama2=%.f degree",gama2);
