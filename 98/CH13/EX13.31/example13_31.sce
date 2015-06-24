//Chapter 13
//Example 13_31
//Page 345

clear;clc;

v1=240;
v2=240;
r1=4;
r2=6;
Rae=0.15;
Rnl=0.15;
Rbc=0.15;

i1=v1/r1;
i2=v2/r2;
in=i1-i2;

V1=v1+i1*Rae+in*Rnl;
V2=v2-in*Rnl+i2*Rbc;

printf("Current on +ve outer = %d A \n", i1);
printf("Current on -ve outer = %d A \n", i2);
printf("Current in nuetral = %d A \n\n", in);

printf("Voltage at the load end on the +ve side = %.2f V \n", V1);
printf("Voltage at the load end on the -ve side = %.2f V \n\n\n", V2);

disp("(i) WHEN NUETRAL BREAKS: ");
tr=r1+r2+Rae+Rbc;
i=(V1+V2)/tr;
vn1=i*r1;
vn2=i*r2;
printf("Total circuit resistance = %.1f ohm \n", tr);
printf("Load current = %.2f A \n", i);
printf("Voltage across %d ohm resistance = %.2f V \n", r1, vn1);
printf("Voltage across %d ohm resistance = %.2f V \n\n", r2, vn2);

disp("(ii) WHEN +VE OUTER BREAKS: ");
trd=r2+Rbc+Rnl;
id=V2/trd;
vd=id*r2;

printf("Total circuit resistance = %.1f ohm \n", trd);
printf("Load current = %.2f A \n", id);
printf("Voltage across %d ohm resistance = %.2f V \n\n", r2, vd);

disp("(iii) WHEN -VE OUTER BREAKS: ");
trdd=r1+Rae+Rnl;
idd=V1/trdd;
vdd=idd*r1;

printf("Total circuit resistance = %.1f ohm \n", trdd);
printf("Load current = %.2f A \n", idd);
printf("Voltage across %d ohm resistance = %.2f V \n\n", r1, vdd);


