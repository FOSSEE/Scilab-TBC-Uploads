//Chapter 5
//Example 5_2
//Page 91

clear;clc;

i=20;
v=220;
e=8760;
t=500;
et=0.2;
et_plus=0.1;

lf=1;
md=i*v*lf/1000;
printf("Assuming load factor to be unity\n");
printf("Maximum demand = %.1f kW \n\n", md);

u=md*t;
c=et*u;
ru=e-u;
c_extra=et_plus*ru;
total=c+c_extra;
eqfr=total/e;

printf("(i) Units consumed = %.0f kWh \n\n", u);
printf("    Charges = Rs. %.0f \n\n", c);
printf("    Remaining units = %.0f kWh \n\n", ru);
printf("    Extra charges = Rs. %.0f \n\n", c_extra);
printf("    Total annual bill = Rs. %.0f \n\n\n", total);
printf("(ii)Equivalent flat rate = Rs. %.5f \n\n", eqfr);
