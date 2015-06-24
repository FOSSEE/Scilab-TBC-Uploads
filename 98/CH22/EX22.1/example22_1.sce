//Chapter 22
//Example 22_1
//Page 529

clear;clc;

mva=10*1e6;
v=6.6*1e3;
ph_z=0.1;
i=175;
awp=0.1;

vph=v/sqrt(3);
flc=mva/sqrt(3)/v;
x=v*mva/1e6/flc/sqrt(3)/100;
zw=x*ph_z;
emfw=vph*ph_z;

r=sqrt((emfw/i)^2-zw^2);

printf("Voltage per phase = %.0f V \n\n", vph);
printf("Full load current = %.0f V \n\n", flc);
printf("Reactance per phase = %.3f ohm \n\n", x);
printf("Reactance of 10 percent winding = %.4f ohm \n\n", zw);
printf("EMF induced in 10 percent winding = %.0f V \n\n", emfw);
printf("Impedance offered by fault by 10 percent winding is Zf=sqrt(%.4f^2+r^2) \n\n", zw);
printf("Earthing resistance to be provided = %.3f ohm \n\n", r);
