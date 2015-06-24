//Chapter 14
//Example 14_7
//Page 368

clear;clc;

lr=10*1e3;
ly=8*1e3;
lb=5*1e3;
v=400;

ph_v=v/sqrt(3);
ir=lr/ph_v;
iy=ly/ph_v;
ib=lb/ph_v;

hc=iy*cos(30*%pi/180)-ib*cos(30*%pi/180);
vc=ir-iy*cos(60*%pi/180)-ib*cos(60*%pi/180);
in=sqrt(hc^2+vc^2);

printf("(i) Phase voltage = %.2f V \n", ph_v);
printf("\t Ir = %.1f A \n", ir);
printf("\t Iy = %.1f A \n", iy);
printf("\t Ib = %.1f A \n", ib);

printf("(ii) The three line currents are different in magnitude and displaced by 120 degrees from one another. Resolving currents on x and y axis:\n");
printf("\t Resultant horizontal component = %.1f A \n", hc);
printf("\t Resultant vertical component = %.1f A \n", vc);
printf("\t Current in nuetral wire = %.1f A \n", in);


