//Chapter 11
//Example 11_16
//Page 286

clear;clc;

v=66;
d_in=2;
d_out=5.3;
d1=(2*d_out*d_in)^(1/3);
d2=d1^2/2;

vp=v*sqrt(2/3);

v1=vp/(1+d1/d_in+d2/d_in);
v2=d1/d_in*v1;
vf=vp-v1;
vs=vp-v1-v2;

maxs=v1/(d_in*log(d1/d_in)/2);
mins=v1/(d1*log(d1/d_in)/2);

printf("(i) POSITIONS OF INTERSHEATHS: \n");
printf("d1 = %.2f cm \n", d1);
printf("d2 = %.2f cm \n\n", d2);

printf("(ii) VOLTAGE ON INTERSHEATH: \n");
printf("V1 = %.2f kV \n", v1);
printf("V2 = %.2f kV \n", v2);
printf("Voltage on first intersheath = %.2f kV \n", vf);
printf("Voltage on second intersheath = %.2f kV \n\n", vs);

printf("(iii) STRESSES ON DIELECTRIC: \n");
printf("Maximum stress = %.2f kV/cm \n", maxs);
printf("Minimum stress = %.2f kV/cm \n\n", mins);


