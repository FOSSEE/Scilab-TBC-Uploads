//Ex:5.13
clc;
clear;
close;
Lc=100000;// coherence length in m
y=1.32*10^-6;// operating wavelength in m
dy=1.5*10^-9;// spectral width in m
BF=y^2/(Lc*dy);//model birefrigence in um
L=y/BF;// beat length in m
printf("The beat length=%f m", L);