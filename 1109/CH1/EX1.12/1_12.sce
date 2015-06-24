clear;
clc;
a=.1;d=30;Ur=1;s=5.57*(10^7);e=1;f=30000;
//ur= relative magnetic permeability of conductor material,
//s=conductivity of material
//e=relative dielectric constant of the material
L=(Ur+9.21*log10(d/a))*10^-7;
printf("-Inductance L = %f mH/km\n",L*10^3);
C=12.07*e/(log10(d/a));
printf("-Capacitance C = %f micromicrofarads/km\n",round(C*100)/100);
Rdc=2/(%pi*a*a*10^-2*10^-2*s);
Rdc1=Rdc*10^3;
printf("-D.C.resistance of line Rdc = %f ohms/km\n",round(Rdc1*100)/100);
Uo=4*%pi*10^-7;
//Uo=absolute permeability
Rac=(1/(a*10^-2))*(sqrt(f*Uo/(%pi*s)));
Rac1=Rac*10^3;
printf("-A.C.resistance of line = %f ohms/km",round(Rac1*100)/100);
//the difference in result of innductance and capacitance is due to erroneous value in textbook.
disp("The difference in result of inductance and capacitance is due to erroneous value in textbook")



