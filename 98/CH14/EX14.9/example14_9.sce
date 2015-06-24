//Chapter 14
//Example 14_9
//Page 370

clear;clc;

v=400;
ph_v=230;
lr=20*1e3;
ly=28.75*1e3;
lb=28.75*1e3;

ir=lr/ph_v;
iy=ly/ph_v;
ib=lb/ph_v;

//referring to the phasor diagram in the text book
xc=ir-iy*cos(30*%pi/180)-ib*cos(30*%pi/180);
yc=iy*cos(60*%pi/180)-ib*cos(60*%pi/180);
in=sqrt(xc^2+yc^2);

printf("\t Ir = %.1f A \n", ir);
printf("\t Iy = %.1f A \n", iy);
printf("\t Ib = %.1f A \n\n", ib);

printf("\t Resultant X-component = %.1f A \n", xc);
printf("\t Resultant Y-component = %.1f A \n", yc);
printf("\t Current in nuetral wire = %.1f A \n\n", in);

printf("WHEN LOAD FROM B TO N IS REMOVED: \n");
printf("\t Ir = %.2f A in phase with Vrn \n", ir);
printf("\t Iy = %.2f A lagging Vyn by 30 degrees \n", iy);
printf("\t Ib = 0 A \n\n");

ac=ir-iy*cos(30*%pi/180);
rc=0-iy*sin(30*%pi/180);
nc=sqrt(ac^2+rc^2)

printf("Resultant X-component = %.2f A \n", ac);
printf("Resultant Y-component = %.2f A \n", rc);
printf("Nuetral current = %.2f A \n\n", nc);



