//Chapter 5
//Example 5_7
//Page 94

clear;clc;

fcd=300;
fcs=1200;
rcd=0.25;
rcs=0.0625;

printf("Let L be the load factor\n");

printf("DIESEL STATION: \n");
apd=100/8760;
fc_d=fcd*apd;
rc_d=100*rcd;
printf("Average power = %.4f kW \n", apd);
printf("Maximum demand = %.4f/L kW \n", apd);
printf("Fixed charges = Rs. %.2f/L \n", fc_d);
printf("Running charges = Rs. %.2f \n", rc_d);
printf("Fixed and running charges = Rs. (%.2f/L + %.2f) \n\n", fc_d, rc_d);

printf("STEAM STATION: \n");
aps=100/8760;
fc_s=fcs*aps;
rc_s=100*rcs;
printf("Fixed charges = Rs. %.2f/L \n", fc_s);
printf("Running charges = Rs. %.2f \n", rc_s);
printf("Fixed and running charges = Rs. (%.2f/L + %.2f) \n\n", fc_s, rc_s);

l=54.72;
printf("Equating the two charges and solving, we get L = %.2f %% \n\n", l);

