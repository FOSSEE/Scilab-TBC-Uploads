//Ex:5.16
clc;
clear;
close;
dy=15;// spectral width in nm
L=25;// optical length in km
ps=1.60;//pulse spreads in ns/km
pS=1.6;// pulse spreads in ns/km
d=pS/(dy*L);// material dispersion in ns/km^2/nm
printf("The  max dispersion =%f ns/km^2/nm", d);