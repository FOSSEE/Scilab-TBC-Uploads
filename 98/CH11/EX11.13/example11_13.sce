//Chapter 11
//Example 11_13
//Page 283

clear;clc;

d_in=3;
d_out=9;
e1=5;
e2=4;
g1_max=30;
g2_max=20;

d1=g1_max*e1*d_in/g2_max/e2;
ri=(d1-d_in)/2;
ro=(d_out-d1)/2;
v=g1_max/2*d_in*log(d1/d_in)+g2_max/2*d1*log(d_out/d1);

printf("d1 = %.3f cm \n\n", d1);
printf("Radial thickness of inner dielectric = %.3f cm \n\n", ri);
printf("Radial thickness of outer dielectric = %.3f cm \n\n", ro);
printf("Permissible peak voltage for the cable = %.3f kV \n", v);
printf("Safe working rms voltage for the cable = %.3f kV \n\n", v/sqrt(2));

