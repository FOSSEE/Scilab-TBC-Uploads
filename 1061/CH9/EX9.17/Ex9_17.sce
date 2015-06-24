//Ex:9.17
clc;
clear;
close;
n=0.65;// quantum efficiency
e=1.602*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
Eg=1.5*10^-19;// in J
y=(h*c)/Eg;// cut off wavelength in m
f=c/y;
R=(n*e)/(h*f);// responsivity in A/W
Ip=2.5*10^-6;// photo current in A
Po=Ip/R;// incident optical power in W
Po1=Po*10^6;// incident optical power in uW
printf("The cut off wavelength =%f um", y*10^6);
printf("\n The responsivity =%f A/W ", R);
printf("\n The incident optical power =%f uW", Po1);