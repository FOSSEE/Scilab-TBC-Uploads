//Ex:5.2
clc;
clear;
close;
p=100;// power in kW
d=10;// distance in km
Eo=(300*sqrt(p))/d;/// the field strength in mV/m
printf("The field strength = %d mV/m", Eo);