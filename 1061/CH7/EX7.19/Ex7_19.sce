//Ex:7.19
clc;
clear;
close;
L1=1.5;// length in km
L2=2/1000;// length in km
Pi=50.1*10^-6;// optical power in W
Po=385.4*10^-6;// output power in W
a=(10/(L1-L2))*log(Po/Pi)/log(10);// attenuation per km
printf("The attenuation per km =%f dB/km", a);