
// Ex6_2

clc;

// Given:
d1=12;// density of Gd
a1=43.11;// in b
m1=106.4;
Na=6.02*10^23;
i1=1;
i2=1/1000;
// Solution

x=log(i1/i2)/((d1*Na*a1*10^-24)/m1);// thickness for Pd foil

printf("The thickness of Pd foil which would reduce the intensity of a beam to excatly 1/1000 of its initial value is = %f cm",x)
