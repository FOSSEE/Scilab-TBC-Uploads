//Ex:3.10
clc;
clear;
close;
c=100*10^-6;//in farads
r=1*10^3;//in ohms
t1=50*10^-3;//in sec.
t2=100*10^-3;//in sec.
V_s=350;//in volts
i1=(V_s/1000)*(%e^(-t1/(r*c)));
i2=(V_s/1000)*(%e^(-t2/(r*c)));
printf("Charging current after %f sec = %f A",t1,i1);
printf("\n Charging current after %f sec = %f A",t2,i2);