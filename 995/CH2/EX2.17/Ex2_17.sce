//Ex:2.17
clc;
clear;
close;
r_o=40;//resis at 0 degree
r_t=44;//at 100 degree
t=100;//temperature diff.
temp_coeff=(1/t)*((r_t/r_o)-1);
printf("Temperature Coefficient = %f per degree centigrade",temp_coeff);
