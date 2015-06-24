//Ex:5.11
clc;
clear;
close;
L=6*10^-2;// beat length in m
dy=6*10^-9;// spectral width in m
y=1.3*10^-6;// operating wavelength in m
BF=y/(L);//model birefrigence in um
Lc=y^2/(BF*dy);// coherence length in m
db=2*3.14/(L);// difference beween two propagation constants
dB=(2*3.14*BF)/y;
printf("The model birefrigence =%f um", BF*10^6);
printf("\n The coherence length=%f m", Lc);
printf("\n The difference beween two propagation constants=%f", db);
printf("\n The difference beween two propagation constants=%f", dB);