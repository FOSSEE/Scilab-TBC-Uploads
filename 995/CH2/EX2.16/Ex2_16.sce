//Ex:2.16
clc;
clear;
close;
temp_coeff=0.0005;//in per degree centigrade
r_t1=680;//in ohm
t1=20;//temperature diff.
t2=90;
r_o=r_t1/(1+(temp_coeff)*t1);
r_t2=r_o*(1+(temp_coeff)*t2);
printf("Resistance at %d degree = %f ohms",t2,r_t2);
