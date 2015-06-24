//Ex:3.5
clc;
clear;
close;
I_in=5;//in mA
R_m=100;
I_m=1;
R_s=R_m*I_m/(I_in-1);
printf("Value of parallel shunt resistor = %d A",R_s);