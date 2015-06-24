//Chapter 11
//Example 11_15
//Page 285

clear;clc;

d_in=2;
d1=3.1;
d2=4.2;
d_out=5.3;
v=66;

vp=v*sqrt(2/3);

g1_max=1/(d_in/2)/log(d1/d_in);
g2_max=1/(d1/2)/log(d2/d1);
g3_max=1/(d2/2)/log(d_out/d2);

v2=g1_max/g2_max;
v3=g1_max/g3_max;

vd=1+v2+v3;
va1=vp/vd;
va2=v2*va1;

vf=vp-va1;
vs=vp-va1-va2;

printf("g1_max = %.2fV1 \n", g1_max);
printf("g2_max = %.2fV1 \n", g2_max);
printf("g3_max = %.2fV1 \n\n", g3_max);

printf("V2 = %.3fV1 \n", v2);
printf("V3 = %.3fV1 \n\n", v3);

printf("V1 = %.2f kV \n\n", va1);

printf("Voltage on the first intersheath = %.2f kV \n", vf);
printf("Voltage on the second intersheath = %.2f kV \n\n", vs);
