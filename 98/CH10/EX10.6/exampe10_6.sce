//Chapter 10
//Example 10_6
//Page 237

clear;clc;

r=6;
xl=8;
pfr=0.9;
vr=110*1000/sqrt(3);
vs=120*1000/sqrt(3);

i=(vs-vr)/(r*pfr+xl*sin(acos(pfr)));
op=3*vr*i*pfr/1000;
pfs=(vr*pfr+i*r)/vs;

printf("Recieving end voltage = %.0f V \n\n", vr);
printf("Sending end voltage = %.0f V \n\n", vs);
printf("Load current = %.2f A \n\n", i);
printf("(i) Power output = %.0f kW \n\n", op);
printf("(ii) Sending end power factor = %.2f lag \n\n", pfs);


