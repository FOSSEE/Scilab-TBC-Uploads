//Example 10// Ch 5
clc;
clear;
close;
// given data
m1=0.92;//smoothness coefficient
m2=0.95;//weather coefficient
Deq=600;//mean geometric distance b/w conductors in cm
V = 275;//line operating at voltage V in kV
p=75;//pressure in cm Hg
t = 35;//in degree C
r=1;//radius of conductors in cm
delta=3.92*p/(273+t);//relative air density
printf("relative air density %f",delta)
E0=30*delta*(1+0.3/sqrt(delta*r))*m1*m2;//corona onset field
printf("corona onset field %f kVpeak/cm",E0)
V0 = E0*log(Deq);//onset voltage in kVpeak
printf("onset voltage %f kVpeak",V0)
V0rms=V0/sqrt(2);//rms onset voltage
printf("rms onset voltage %f kV",V0rms)
V0ll=V0rms*sqrt(3);//onset voltage line to line
printf("line to line onset voltage %f kV line to line",V0ll)
K= 0.05;
f=50;//in Hz
Vph=(V*10^3)/sqrt(3);
Pc=3.73*K*f*(Vph^2)*10^-5/(Deq/r)^2;
printf("corona power loss %f kW/(cond.km)",Pc)
Ic=Pc/Vph;
printf("corona current %e A/km",Ic)
