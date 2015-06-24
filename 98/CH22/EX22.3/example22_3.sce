//Chapter 22
//Example 22_3
//Page 530

clear;clc;

mva=10;
kv=6.6;
i1=1000;
i2=5;
oc=0.75;
r=6;
x=10;

v_ph=kv*1000/sqrt(3);
min_fc=i1/i2*oc;
emf=v_ph/100;
efc=emf/r;
uw=min_fc/efc;

printf("(i) x%% of the winding is unprotected, \n\n")
printf("Voltage per phase = %d V \n\n", v_ph);
printf("Minimum fault current which will operate the relay = %d A \n\n", min_fc);
printf("EMF induced in %%x winding = %.2f*x V \n\n", emf)
printf("Earth fault current which %%x winding will cause = %.2f*x A \n\n", efc);
printf("This current must be equal to %d A \n\n", min_fc);
printf("Unprotected winding, x= %.2f %% \n\n", uw);

min_r=emf*x/min_fc;
printf("(ii) The minimum earthing resistance required to provide protection for %d %% of stator winding = %.2f ohm \n\n", (100-x), min_r);
