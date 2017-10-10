//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex4_19.sce.

clc;
clear;
r1=3e-2;
r2=6e-2;
r3=9e-2;
q1=9e-12;
q2=-6e-12;
q3=3e-12;
d1=2e-2;
d2=4e-2;
d3=7e-2;
d4=12e-2;
epsilon_not=8.854e-12;
a=9e9;                //a=1/(4*%pi*epsilon_not);

printf("\n Field strength and potentials for point a,b,c,d are ,")
Ea=0;
printf("\n\t Ea=%g N/C",Ea)
Va=a*((q1/r1)+(q2/r2)+(q3/r3));
printf("\n\t Va=%g V \n",Va)

Eb=a*(q1/d2^2);
printf("\n\t Eb=%g N/C",Eb)
Vb=a*((q1/d2)+(q2/r2)+(q3/r3));
printf("\n\t Vb=%g V \n",Vb)

Ec=a*((q1/d3^2)+(q2/d3^2));
printf("\n\t Ec=%1.2f N/C",Ec)
Vc=a*((q1/d3)+(q2/d3)+(q3/r3));
printf("\n\t Vc=%1.3f V \n",Vc)

Ed=(a/d4^2)*(q1+q2+q3);
printf("\n\t Ed=%g N/C",Ed)
Vd=(a/d4)*(q1+q2+q3);
printf("\n\t Vd=%g V \n",Vd)
//There is a error in book calculation on Vc. In the book Vc=0.762 volt instead of 0.6857 volt
