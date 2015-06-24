//Chapter 22
//Example 22_4
//Page 531

clear;clc;

mva=10;
kv=6.6;
x=(100-85);

v_ph=kv*1000/sqrt(3);
i=mva*1e6/sqrt(3)/kv/1000;
min_fc=0.2*i;
emf=0.15*v_ph;
r=emf/min_fc;

printf("Full load current = %.2f A \n\n", i);
printf("Minimum fault current which will operate the relay = %.2f A \n\n", min_fc);
printf("Voltage induced in %d %% winding is %.2f V \n\n", x, emf);
printf("Earth fault current which %d %% winding will cause = %.2f/r \n\n", x, emf);
printf("This current must be equal to minimum fusing current %.2f A \n\n", min_fc);
printf("Earthing resistance required = %.2f ohm \n\n", r);
