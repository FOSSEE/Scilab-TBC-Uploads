//Chapter 22
//Example 22_2
//Page 530

clear;clc;

r=7.5;
mva=10;
i1=1000;
i2=5;
kv=6.6;
oc=0.5;

v_ph=kv*1000/sqrt(3);
min_fc=i1/i2*oc;
emf=v_ph/100;
efc=emf/r;
uw=min_fc/efc;

printf("Voltage per phase = %d V \n\n", v_ph);
printf("Minimum fault current which will operate the relay = %d A \n\n", min_fc);
printf("EMF induced in %%x winding = %.2f*x V \n\n", emf)
printf("Earth fault current which %%x winding will cause = %.2f*x A \n\n", efc);
printf("This current must be equal to %dA \n\n", min_fc);
printf("Unprotected winding, x= %.2f %% \n\n", uw);
