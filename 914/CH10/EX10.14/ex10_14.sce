clc;
warning("off");
printf("\n\n example10.14 - pg459");
// given
l=0.09238;
rh=0.1624*l;
L=300;
de=4*rh;
p=1000;  //[kg/m^3]
mu=10^-3;  //[kg/m*sec]
Uavg=1.667;
Nre=(de*Uavg*p)/mu;
f=0.0053;
deltap=((4*f*L)/de)*(p*(Uavg^2)*(1/2));
printf("\n\n -deltap = %e kg/m*s = %e N/m^2 = %f kPa",deltap,deltap,deltap*10^-3);
