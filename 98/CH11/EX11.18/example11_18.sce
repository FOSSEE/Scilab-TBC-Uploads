//Chapter 11
//Example 11_18
//Page 290

clear;clc;

v=66;
v_ph=66*1000/sqrt(3);
f=50;
c1=12.6;
c2=7.4;

ce=c1/3;
cc=(c2-ce)/2;
cn=ce+3*cc;
ic=2*%pi*f*v_ph*cn/1e6;

printf("Core-core capacitance of the cable = %.2f uF \n\n", cc);
printf("Core-earth capacitance of the cable = %.2f uF \n\n", ce);
printf("Core to nuetral capacitance of the cable = %.2f uF \n\n", cn);
printf("Charging current = %.2f A \n\n", ic);

