//Example 1// Ch 4
clc;
clear;
close;
// given data
I1 = 2.7*10^-8;//steady state current in Amperes
V = 10; //voltage in kV
d1 = 0.005; //spacing between the plane electrodes in meters
d2 = 0.01; // spacing incresed in meters
I2 = 2.7*10^-7;//increased steady state current in amperes
e = 1.6*10^-19;
x = 1/(d2-d1);
y = log(I2/I1);
alpha = x*y;//ionization coefficient
printf("ionization coefficient %f m^-1",alpha)
I0 = I1*exp(-alpha*d1);//photoelctric current
printf("photoelectric current %e A",I0)
n0 = I0/e;
printf("no of electrons emitted from cathode %e electrons/s",n0)

