//Example 5// Ch 12
clc;
clear;
close;
// given data
C2 = 0.75/3;//capacitance between 3 core bunched together and lead sheath in uF/km
C3=0.56//in uf/km
V=33*10^3;
f=50;//in Hz
C4=0.5*(C2+C3)*10;//capacitance per km b/w any two cores
printf("capacitance per km b/w any two cores %f uF",C4)
ChargKVAr=V^2*2*%pi*f*C4/10^9;
printf("Charging KVAr %f KVAr",ChargKVAr)
//given ans in book is wrong the capacitance of 10km b/w 2 cores is 4.05uF


