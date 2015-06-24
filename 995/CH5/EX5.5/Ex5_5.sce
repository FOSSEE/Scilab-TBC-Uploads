//Ex:5.5
clc;
clear;
close;
I_e=98;//in mA
I_c=97;
I_b=I_e-I_c;
hfe=I_c/I_b;
printf("Emitter current = %d mA    &    hfe = %d",I_b,hfe);