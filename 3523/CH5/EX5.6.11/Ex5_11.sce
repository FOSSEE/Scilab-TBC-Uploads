//Example 10// Ch 5
clc;
clear;
close;
// given data
m1=0.9;//smoothness coefficient
m2=0.9;//weather coefficient
r=3.175;//radius of conductor in cm
V=525;//rated voltage in kV where no corona is present
delta=1;//relative air-density factor
Deq=112.63;//in cm
E0=30*delta*(1+0.3/sqrt(delta*r))*m1*m2;//corona onset field
printf("corona onset field %f kVpeak/cm",E0)
E0rms=E0/sqrt(2);
printf("rms corona onset field %f kV/cm",E0rms)
V0=E0*r*log(Deq);
printf("corona onset voltage %f kV",V0)
V0ll=V0*sqrt(3);
printf("corona onset voltage lin to line %f kV",V0ll)
V1=2.5*V;//line to line voltage higher than V0 so corona is present on the conductor
re=5;//effective radius of corona envelope in cm
printf("envelope radius %f cm",re)




