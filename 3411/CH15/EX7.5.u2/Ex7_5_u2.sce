//Example 7_5_u2
clc();
clear;
//To find the hall voltage
e=1.6*10^-19    //units in eV
n=10^16
Rh=-1/(e*n)
i=10^-3
Bz=10^-4
a=2.5*10^-3
w=500*10^-4
Vh=((Rh*i*Bz)/a)*w       //units in mV
printf("The hall voltage is Vh=%.5f mV",Vh)
