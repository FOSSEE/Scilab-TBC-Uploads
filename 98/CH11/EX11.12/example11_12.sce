//Chapter 11
//Example 11_12
//Page 282

clear;clc;

d_in=2;
d_out=8;
e1=5;
e2=4;
e3=3;
g_max=40;

d1=e1*d_in/e2;
d2=e1*d_in/e3;

printf("GRADED CABLE: \n");
printf("d1 = %.2f cm \n", d1);
printf("d2 = %.2f cm \n", d2);

v=g_max/2*(d_in*log(d1/d_in)+d1*log(d2/d1)+d2*log(d_out/d2));
sv=v/sqrt(2);

printf("Permissible peak voltage for the cable = %.3f kV \n", v);
printf("Safe working rms voltage for the cable = %.3f kV \n\n", sv);

pv=g_max/2*d_in*log(d_out/d_in);
printf("UNGRADED CABLE: \n");
printf("Permissible peak voltage for the cable = %.3f kV \n", pv);
printf("Safe working rms voltage for the cable = %.3f kV \n\n", pv/sqrt(2));






