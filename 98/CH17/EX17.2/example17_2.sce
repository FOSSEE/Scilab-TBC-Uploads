//Chapter 17
//Example 17_2
//Page 404

clear;clc;

mva=20*1e6;
kv=10*1e3;
x=5;
sc=8;

i=mva/sqrt(3)/kv;
vph=kv/sqrt(3);
tperx=(1/sc)*100;
ext=tperx-x;
perx=ext*vph/100/i;

printf("Full load current = %.2f A \n\n", i);
printf("Voltage per phase = %.2f V \n\n", vph);
printf("Total percentage reactance required = %.2f %% \n\n", tperx);
printf("External percentage reactance required = %.2f %% \n\n", ext);
printf("Percentage reactance = %.2f ohm \n\n", perx);
