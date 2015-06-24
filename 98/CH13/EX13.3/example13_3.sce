//Chapter 13
//Example 13_3
//Page 315

clear;clc;

l1=2;
l2=6-2;
i1=40;
i2=20;
v=600;
rw=0.25;
rt=0.03;

r=rw+rt;
i_sa=i1+i2;
i_ab=i2;
v_sa=i_sa*r*l1;
v_ab=i_ab*r*l2;
va=v-v_sa;
vb=va-v_ab;

printf("Reisistance of trolley wire and track/km = %.2f ohm \n\n", r);
printf("Current in section SA = %d A \n\n", i_sa);
printf("Current in section AB = %d A \n\n", i_ab);
printf("Voltage drop in section SA = %.2f V \n\n", v_sa);
printf("Voltage drop in section AB = %.2f V \n\n", v_ab);
printf("Voltage across tram A = %.2f V \n\n", va);
printf("Voltage across tram B = %.2f V \n\n", vb);




