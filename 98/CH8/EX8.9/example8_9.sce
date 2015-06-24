//Chapter 8
//Example 8_9
//Page 177

clear;clc;

ins=4;
k=1/5;

v1=1;
v2=v1*(1+k);
v3=v1*(1+3*k+k^2);
v4=v1*(1+6*k+5*k^2+k^3);
v=v1+v2+v3+v4;

pv1=v1/v*100;
pv2=v2/v*100;
pv3=v3/v*100;
pv4=v4/v*100;

n=v/ins/v4*100;

printf("\n(i) V1 = %.2f V \n", v1);
printf("V2 = %.2f V \n", v2);
printf("V3 = %.2f V \n", v3);
printf("V4 = %.2f V \n\n", v4);
printf("Voltage across the string = %.2f V \n", v);

printf("The voltage across each unit expressed as a percentage becomes: \n");
printf("\t Top unit = %.2f %% \n", pv1);
printf("\t Second from top = %.2f %% \n", pv2);
printf("\t Third from top = %.2f %% \n", pv3);
printf("\t Fourth from top = %.2f %% \n\n", pv4);

printf("(ii) String efficiency = %.2f %% \n", n);

