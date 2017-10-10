//Example 8// Ch 12
clc;
clear;
close;
// given data
a=2;
b=5.3;
alpha=(b/a)^0.33;
r1=1.385;//radii of intersheaths in cm
r2=1.92;//radii of intersheaths in cm 
r=1;//conductor radius in cm
ri=2.65;//sheath of inside radius in cm
V=66;//voltage in kv
Vpeak=66*sqrt(2)/sqrt(3);//peak voltage
V2=Vpeak/(1+1/alpha+(1/alpha)^2);//in kV
V1=(1+1/r1)*V2;//in kV
printf("%f kV",V2)
printf("%f kV",V1)
Emax0=Vpeak/(r*log(ri/r));
printf("max stress without sheaths %f kV/cm",Emax0)
Emin0=Vpeak/(ri*log(ri/r));
printf("min stress without sheaths %f kV/cm",Emin0)
Emax=3*Emax0/(1+alpha+alpha^2);
printf("max stress %f kV/cm",Emax)
Emin=Emax/alpha;
printf("min stress %f kV/cm",Emin)

