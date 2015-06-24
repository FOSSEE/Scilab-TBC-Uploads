//Chapter 11
//Example 11_19
//Page 290

clear;clc;

c=0.18;
l=20;
v=3300;
f=50;

c3=c*l;
v_ph=v/sqrt(3);

cn=2*c3;
ic=2*%pi*f*v_ph*cn/1e6;
kva=3*v_ph*ic;

printf("Capacitance between pair of cores with third core = %.2f uF \n\n", c3);
printf("Core to nuetral capacitance of the cable = %.2f uF \n\n", cn);
printf("Charging current = %.2f A \n\n", ic);
printf("kVA taken by the cable = %.2f kVA \n\n", kva/1000);

