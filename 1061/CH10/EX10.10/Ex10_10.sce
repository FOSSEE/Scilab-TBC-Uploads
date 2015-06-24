//Ex:10.10
clc;
clear;
close;
y=860*10^-9;// wavelength in m
c=3*10^8;// speed of light in m/s
n1=1.47;// 
dl=0.02;// 
n12=n1*dl;// the difference b/w n1 and n2
La=1/1000;// loss a in dB/m
Pr=-65;// receiver power in dB
Pt=-5;// transmitted power in dB
dy=30*10^-9;// line width in m
X=0.024;
Lmax=(0.35*c*y)/(dy*X);// material dispersion limited distance for RZ coding in m
L_GI=(1.4*c*n1)/(n12);// model dispersion limited distance for RZ coding in m
L_At=(Pt-Pr)/(La);// attenuation limited distance for RZ coding in m 
printf("The material dispersion limited distance =%f*10^10*1/Br m", Lmax/10^10);
printf("\n The model dispersion limited distance =%f*10^10*1/Br m", L_GI/10^10);
printf("\n The attenuation limited distance =%d-20log(Br) km", L_At/10^3);