//Determine internal diameter of shealth D and diameter of conductor d
clear;
clc;
//soltion
//given
gmax=23*10^5;//V/cm
V=10000;//Volts
d=2*V/gmax;
D=exp(1)*d*1000;
printf("Diameter of conductor(d)= %.1f mm \nInternal diameter of shealth (D)= %.2f mm",d*1000,D);
