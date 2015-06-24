//Chapter 14
//Example 14_8
//Page 369

clear;clc;

v=400;
vl=230;
ia=70;
ib=84;
ic=33;
im=200;
pf=0.2;

//part 1
printf("LAMP LOAD ALONE: \n");

//Refering to the phasor diagram in the book
hc=ib*cos(30*%pi/180)-ic*cos(30*%pi/180);
vc=ia-ib*cos(60*%pi/180)-ic*cos(60*%pi/180);
in=sqrt(hc^2+vc^2);

printf("Resultant horizontal component = %.2f A \n", hc);
printf("Resultant vertical component = %.2f A \n", vc);
printf("Neutral component = %.2f A \n\n", in);

//part 2
printf("BOTH LAMP AND MOTOR LOAD: \n");

ac=im*pf;
rc=im*sin(acos(pf));
Ir=sqrt((ac+ia)^2+rc^2);
Iy=sqrt((ac+ib)^2+rc^2);
Ib=sqrt((ac+ic)^2+rc^2);

printf("Nuetral current remains the same, ie In = %.2f A \n", in);
printf("Active component of motor current = %.0f A \n", ac);
printf("Reactive component of motor current = %.0f A \n", rc);
printf("\t Ir = %.2f A \n", Ir);
printf("\t Iy = %.2f A \n", Iy);
printf("\t Ib = %.2f A \n\n", Ib);

//part 3
printf("POWER SUPPLIED: \n");

pl=vl*(ia+ib+ic);
pm=sqrt(3)*v*im*pf;

printf("Power supplied to lamps = %.0f W \n", pl);
printf("Power supplied to motor = %.0f W \n", pm);

