//Example 10// Ch 4
clc;
clear;
close;
// given data
d = 0.001; //in meters
p = 101.3; //in kPa
alpha = (17.7 + log(d))/d;//ionization coefficient in m^-1
x = alpha/p; //in m^-1kPa^-1
s = 11253.7; //constant in m-1kPa-1
B = 273840; //constant in V/m kPa
E1 = p/((-1/B)*log(x/s));// in V/m
Vs1 = E1*d; //break down voltage in V
printf("ionization coefficient %f m^-1 \n",alpha)
printf("electric field %e V/m \n",E1)
printf("breakdown voltage %f kV \n",Vs1*10^-3)
E2 = 468*10^4;// in V/m
Vs2 = E2*d;//breakdown voltage by meel and loeb's eq
printf("breakdown voltage %f kV \n",Vs2*10^-3)
