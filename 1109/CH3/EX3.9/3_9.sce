clear;
clc;
Zo=692*exp(%i*(-%pi/(180/12 )));Zr=200;l=100;V=1;f=1000;
K=(Zr-Zo)/(Zr+Zo);
C=real(K);
D=imag(K);
printf("Voltage reflection coefficient = %f /_ %f",round(abs(K)*100)/100,round(atan(D,C)*180*10/%pi)/10);
