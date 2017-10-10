//Example 7// Ch 4
clc;
clear;
close;
// given data
V = 9*10^3; //in V
d = 0.002;//two parallel plates spaced by distance d in meters
// 1/mean free path is equal to a*p where a is constant
s = 11253.7;//constant value in m^-1kPa^-1
B = 273840;//constant value in V/mkPa
p = 101.3;// in kPa
E = V/d;
t = (-B*p)/E;
alpha = p * s * exp(t);
printf("electric field %e V/m \n",E)
printf("ionization cofficient %f m^-1 \n",alpha)
z = 1/(exp(alpha*d)-1);//secondary coefficient of ionization
printf("secondary coefficient of ionization %f \n",z)
