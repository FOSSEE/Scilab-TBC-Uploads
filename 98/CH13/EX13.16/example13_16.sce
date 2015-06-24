//Chapter 13
//Example 13_16
//Page 328

clear;clc;

i=1.25;
//minimum voltage occurs at point C
Vc=220;
x=450;
r_km=0.05;
l=800;

r=2*r_km/1000;
Vac=i*r*x^2/2;
Va=Vc+Vac;
Vbc=i*r*(l-x)^2/2;
Vb=Vc+Vbc;

printf("Voltage drop in section AC = %.2f V \n\n", Vac);
printf("Voltage at feeding point A = %.2f V \n\n", Va);
printf("Voltage drop in section BC = %.2f V \n\n", Vbc);
printf("Voltage at feeding point B = %.2f V \n\n", Vb);
