//Ex:5.4
clc;
clear;
close;
I_c=30;//in mA
I_b=0.6;
I_e=I_c+I_b;
hfe=I_c/I_b;
printf("Emitter current = %f ohms    &    hfe = %d",I_e,hfe);