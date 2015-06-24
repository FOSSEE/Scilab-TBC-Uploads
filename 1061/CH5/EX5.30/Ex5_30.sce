//Ex:5.30
clc;
clear;
close;
a=4.1*10^-6;// core radius in um
dl=0.0036;
y1=1.310*10^-6;// operating wavelength in um
y2=1.550*10^-6;// operating wavelength in um
n1=1.4677;// core refrative index at y=1.310
n2=1.4682;// core refrative index at y=1.550
v1=(2*3.14*a*n1*sqrt(2*dl))/y1;// normalised frequency at y=1.310
v2=(2*3.14*a*n2*sqrt(2*dl))/y2;// normalised frequency at y=1.550
wo=a*(0.65+(1.619/v1^1.5)+2.879/v1^3);
wp=wo-a*(0.016+1.567/v1^7);
wo1=a*(0.65+(1.619/v2^1.5)+2.879/v2^3);
wp1=wo-a*(0.016+1.567/v2^7);
printf("The value of wo =%f um", wo*10^6);
printf("\n The value of wp =%f um", wp*10^6);
printf("\n The value of wo1 =%f um", wo1*10^6);
printf("\n The value of wp1 =%f um", wp1*10^6);