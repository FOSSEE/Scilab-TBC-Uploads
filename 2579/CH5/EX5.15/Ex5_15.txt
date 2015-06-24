//Ex:5.15
clc;
clear;
close;
p=150;// power in kW
d=20;// distance in km
Eo=(300*sqrt(p))/d;// field strength mV/m
printf("The field strength = %f mV/m", Eo);