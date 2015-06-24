//Ex:7.15
clc;
clear;
close;
NA1=0.32;// numerical aperture for fiber1
NA2=0.22;// numerical aperture for fiber2
Lc=20*log(NA1/NA2)/log(10);// NA mismatch coupling loss
printf("The NA mismatch coupling loss =%f dB", Lc);