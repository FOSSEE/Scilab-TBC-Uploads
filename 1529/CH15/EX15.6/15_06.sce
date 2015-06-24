//Chapter 15, Problem 6
clc;
Vr=12;                      //p.d. across the resistance
Vl=5;                       //p.d. across the inductance
//From the voltage triangle of Fig. 15.6,
V=sqrt(Vr^2+Vl^2);
phi=atan(Vl/Vr);
printf("Supply voltage V = %d V\n\n",V);
printf("Circuit phase angle = %.2f deg (lagging)",phi*(180/%pi));
